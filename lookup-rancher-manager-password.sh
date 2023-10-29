#!/bin/bash

docker logs \
  $(docker ps | grep rancher/rancher | awk '{print $1}') \
  2>&1 | grep "Bootstrap Password:"
