# Minimalistic Java EE 8 Quickstarter

A quickstart maven archetype for creating greenfield Java EE 8 projects 
with wildfly as the Application Server

# Get started

* [Java EE /Jakarta EE - Initializr](http://ivo2u.nl/oq)

## Run from mvn central repo

```bash
mvn archetype:generate \
    -DarchetypeGroupId=nl.ivonet \
    -DarchetypeArtifactId=jakartaee8-essentials-archetype \
    -DarchetypeVersion=1.0 -U
```

## Install in local repo

```bash
mvn dependency:get \
   -DgroupId=nl.ivonet \
   -DartifactId=jakartaee8-essentials-archetype \
   -Dversion=1.0
   
mvn archetype:crawl
   
```

## Run if offline available

```bash
mvn archetype:generate -Dfilter=nl.ivonet:
```

this will filter the archetype list on my groupId


# Contact

Twitter: @ivonet
