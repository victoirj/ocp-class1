#!/bin/bash

func_verify()
{
helm template demohelm --debug ./demohelm \
  -f ./demohelm/values.yaml \
  --namespace demohelm
}

func_install()
{
helm upgrade --install demohelm ./demohelm \
  -f ./demohelm/values.yaml \
  --namespace demohelm \
  --create-namespace
}

clear && echo "Module for demohelm"
if [ "$1" == "install" ];
then
  func_install
elif [ "$1" == "verify" ];
then
  func_verify
else
  echo "use verify or install ...."
fi

# EOF
