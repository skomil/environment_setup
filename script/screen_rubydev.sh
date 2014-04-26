if [ "$(eval screen -list | grep ruby_dev)" ]
then
  screen -R ruby_dev
else  
  screen -S ruby_dev
fi

