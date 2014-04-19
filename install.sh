#! /bin/bash

if [ -z "$DEV_ENV_INIT" ]
then
  echo 'adding setup to .bashrc....'
  echo  'source ~/environment_setup/script/bash_extra.sh' >> ~/.bashrc
  if [ "$(eval uname -a | grep Darwin)" ]
  then
    echo  'source ~/environment_setup/script/bash_extra.sh' >> ~/.bash_profile
  fi
  source ~/environment_setup/script/bash_extra.sh
else
  echo 'Development Environment is already installed.'
fi
