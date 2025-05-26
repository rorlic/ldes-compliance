#!/bin/bash
mkdir -p ./dist
rm -f ./dist/ldes-compliance.zip
cd ./src
zip -rq ../dist/ldes-compliance.zip ./*
cd ..
