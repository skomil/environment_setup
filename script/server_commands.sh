function memcached_serve {
  if [ $PLATFORM = "DARWIN" ]
  then
    /usr/local/opt/memcached/bin/memcached &
    telnet localhost 11211
  fi

}
