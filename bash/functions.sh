
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
  res=$(blueutil --is-connected e8:80:2e:e6:e0:69)
  if [[ "$res" = '1' ]]
  then
  echo "Trackpad is connected. Disconnecting"
  blueutil --unpair e8:80:2e:e6:e0:69
  echo "disconnected"
  else
  echo "Trackpad is not connected. Connecting"
  blueutil --unpair e8:80:2e:e6:e0:69
  sleep 1
  echo "pairing"
  blueutil --pair e8:80:2e:e6:e0:69 "" &>/dev/null
  sleep 1
  echo "connecting"
  blueutil --connect e8:80:2e:e6:e0:69
  fi
}
