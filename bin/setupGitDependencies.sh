#!/bin/bash

mkdir -p sfdx-source-dependencies

if [ ! -d ./sfdx-source-dependencies/fflib-apex-mocks ]
  then
    git submodule add https://github.com/SteampunkFoundry/fflib-apex-mocks.git ./sfdx-source-dependencies/fflib-apex-mocks
fi

if [ ! -d ./sfdx-source-dependencies/fflib-apex-common ]
  then
    git submodule add https://github.com/SteampunkFoundry/fflib-apex-common.git ./sfdx-source-dependencies/fflib-apex-common
fi

if [ ! -d ./sfdx-source-dependencies/fflib-apex-mocks ]
  then
    git submodule add https://github.com/SteampunkFoundry/force-di.git ./sfdx-source-dependencies/force-di
fi

if [ ! -d ./sfdx-source-dependencies/at4dx ]
  then
    git submodule add https://github.com/SteampunkFoundry/at4dx.git ./sfdx-source-dependencies/at4dx
fi

git submodule init

sfdx force:source:deploy -p ./sfdx-source-dependencies/fflib-apex-mocks | true
sfdx force:source:deploy -p ./sfdx-source-dependencies/fflib-apex-common | true
sfdx force:source:deploy -p ./sfdx-source-dependencies/force-di | true
sfdx force:source:deploy -p ./sfdx-source-dependencies/at4dx