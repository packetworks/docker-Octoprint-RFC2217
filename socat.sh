#!/bin/bash

while true; do
  sleep 2
  socat pty,link=/tmp/ttyVIRTUAL0,echo=0,raw,mode=777,unlink-close=0 tcp:10.1.1.1:50000 2>&1
  sleep 5
done
