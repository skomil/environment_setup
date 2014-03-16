#! /bin/bash

if [ -z "$DEV_ENV_INIT" ]
then
  echo 'adding setup to .bashrc....'
  echo  'source ~/environment_setup/script/bash_extra.sh' >> ~/.bashrc
  source ~/environment_setup/script/bash_extra.sh
else
  echo 'Development Environment is already installed.'
fi
