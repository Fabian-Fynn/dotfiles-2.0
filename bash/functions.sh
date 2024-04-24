
#  ███████╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
#  ██╔════╝██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
#  █████╗  ██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
#  ██╔══╝  ██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
#  ██║     ╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
#  ╚═╝      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

###########
## SHELL ##
###########

# Create and change dir
mcd () {
    mkdir -pv $1
    cd $1
}


############
## SERVER ##
############


droplet () {
    addr='139.59.144.84'

    eval "ssh fabi@$addr"
}

code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;
}

#############
##  VIVID  ##
#############

tp () {
  res=$(/usr/local/bin/blueutil --is-connected e8:80:2e:e6:e0:69)
  if [[ "$res" = '1' ]]
  then
  echo "Trackpad is connected. Disconnecting"
  /usr/local/bin/blueutil --unpair e8:80:2e:e6:e0:69
  echo "disconnected"
  else
  echo "Trackpad is not connected. Connecting"
  /usr/local/bin/blueutil --unpair e8:80:2e:e6:e0:69
  sleep 1
  echo "pairing"
  /usr/local/bin/blueutil --pair e8:80:2e:e6:e0:69 "" &>/dev/null
  sleep 1
  /usr/local/bin/blueutil --connect e8:80:2e:e6:e0:69
  echo "connected"
  fi
}
