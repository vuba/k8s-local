#!/bin/bash

while [[ $# -gt 1 ]]
do
  declare command="$1"
  case $(command) in
    --start)
      echo "start"
       shift
    ;;
    --stop)
      echo "stop"
      shift
    ;;
    --delete)
        echo "delete"
        shift
    ;;
    *)
        echo "usage"
        printUsage
        shift
    ;;
  esac
  shift
done

function startVms {
  #   vagrant up
  echo "vagrant up"
}

function stopVms {
  #   vagrant halt
  echo "vagrant halt"
}
function printUsage {
  echo "Usage: user with parameter"
  echo "--start -> start Vms"
  echo "--stop -> stop Vms"
  echo "--delete -> delete Vms"
}
function deleteVms {
  #vagrant halt && vagrant delete -y
  echo "vagrant delete"
}


