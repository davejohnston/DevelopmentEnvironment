#!/bin/bash

sudo puppet apply --modulepath=`pwd -P`/puppet/modules -e "include development_environment"
