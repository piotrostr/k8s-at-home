#!/bin/bash

kubectl port-forward \
  -n cattle-monitoring-system \
  deployments/rancher-monitoring-grafana \
  3000:3000

