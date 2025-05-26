#!/bin/bash
curl -F replaceTestHistory=true -F updateSpecification=true \
     -F specification=${SPECIFICATION_API_KEY} -F testSuite=@./dist/ldes-compliance.zip \
     --header "ITB_API_KEY: ${COMMUNITY_API_KEY}" \
     -X POST http://localhost:9000/itb/api/rest/testsuite/deploy
