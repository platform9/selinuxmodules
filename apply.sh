#!/bin/bash

pushd policies

# Container certs
checkmodule -M -m -o ./container_cert.mod ./container_cert.te
semodule_package -o container_cert.pp -m container_cert.mod
semodule -i container_cert.pp

# Platform9 user
checkmodule -M -m -o ./pf9_user.mod ./pf9_user.te
semodule_package -o pf9_user.pp -m pf9_user.mod
semodule -i pf9_user.pp

popd
