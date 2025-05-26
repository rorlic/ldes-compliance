# LDES Compliance Test Suite
This repository contains an [ITB test suite](https://interoperable-europe.ec.europa.eu/collection/interoperability-test-bed-repository/solution/interoperability-test-bed/documentation) to validate the conformance of a collection of LDES node responses against the [LDES specification](https://semiceu.github.io/LinkedDataEventStreams/). You will need a running ITB correctly set up with a domain and a community. The instructions below allow you to retrieve the necessary resources, build the test suite and deploy it to your ITB.

It is related to the [SHACL Validator for LDES & TREE](https://github.com/rorlic/shacl-validator) in that regards that it uses the same [LDES SHACL shapes](https://github.com/rorlic/ldes-shacl) as a basis as well.

It is built on top of the [TREE Compliance Test Suite](https://github.com/rorlic/tree-compliance/tree/main) and as such requires that test suite to be deployed first.

## Refresh Shapes

The bash shell commands below allow you to retrieve the updated shapes, if needed.
```bash
export TAG=v0.3.0-alpha
export FILE=ldes-shapes.zip
export RESOURCES=./src/resources/shapes

mkdir -p $RESOURCES
rm $RESOURCES/*
curl -sL "https://github.com/rorlic/ldes-shacl/releases/download/$TAG/$FILE" -o $RESOURCES/$FILE
unzip -q $RESOURCES/$FILE -d $RESOURCES
rm $RESOURCES/$FILE
```

## Build Test Suite
The build script will create a zip archive for deployment onto your running ITB.
```bash
./build.sh
```

## Deploy Test Suite
The bash shell instructions below will deploy the zip archive created above to your ITB.

>[!WARNING]
> change the API keys below to match your own community and specification:

```bash
export COMMUNITY_API_KEY=D333AAB7X4F80X488CXB5CCX13027544CC41
export SPECIFICATION_API_KEY=BE945DD7X0C71X4FF3XB9F9X2CE3E87CF6FD
clear && ./deploy.sh && echo
```

## Cleanup
To delete the zip archive run:
```bash
rm -rf ./dist
```
