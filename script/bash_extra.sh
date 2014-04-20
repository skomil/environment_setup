export ENV_SETUP=~/environment_setup
export PATH=$PATH:$ENV_SETUP/script:$ENV_SETUP/utilities
export DEV_ENV_INIT=true
export TERM=xterm-256color
#Set command prompt
#PS1="\e[1;2m\]\u\e[m\][\[\e[1;34m\]\W\[\e[m\]]\e[1;36m\](DFT)\e[m\]\e[1;40m\]\h\e[m\]: "

if [ "$(eval uname -a | grep Darwin)" ]
then
  export PLATFORM=DARWIN
fi
if [ "$(eval uname -a | grep Ubuntu)" ]
then
  export PLATFORM=UBUNTU
fi

function vim_tags {
  ctags -R *
  vim .
}

echo '*****************************************************'
echo '*          ** Skomil Environment setup **           *'
echo '*****************************************************'

