#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/usr/bin/env bash

RUNNING=$(docker inspect --format="{{ .State.Running }}" ${artifactId} 2> /dev/null)
if [ $? -eq 1 ] || [ "$RUNNING" == "false" ]; then
    rm -rfv ./artifact/*.war

    docker run \
     -d \
     --rm \
     --name ${artifactId} \
     -p 8080:8080 \
     -p 9990:9990 \
     -v "$(pwd)/artifact:/deployments" \
     ivonet/payara:5.193

    echo "Payara admin console credentials:"
    echo "Console: http://localhost:4848"
    echo "Usr: admin"
    echo "Pwd: s3cr3t"
    echo "Base URL: http://localhost:8080"

    mvn clean package
else
    docker rm -f ${artifactId}
fi

