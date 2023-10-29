# K8s at Home

Its the weekend and I bought two used server racks from Dell, will be using one
of them for serving and the other for redundance, parts are not easily found in
Gdansk.

In full capacity, the single rack can supply 48CPU@2.4GHz (96vCPU) + 120GBish
of RAM + 2TiB HDD

I'll supply the distro with a bootable USB stick, install rancher on each of
the machines and create a cluster with control plane on one of the nodes and
the remaining nodes being workers

It will be awesome to configure the Prometheus + Grafana stack and Fluentd for
log collection, same as in the Google Cloud GKE Autopilot default cluster setup
