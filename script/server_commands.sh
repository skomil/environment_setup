function memcached_serve {
  if [ $PLATFORM = "DARWIN" ]
  then
    /usr/local/opt/memcached/bin/memcached &
    telnet localhost 11211
  else
    echo "Platform Not Supported"
  fi

}
function mongod_dev {
   mongod --dbpath ~/local_dev/mongo_data/
}
