# K8s at Home

## Sunday Fun Day

Its the weekend and I bought two used server racks from Dell, will be using one
of them for serving and the other for redundance, parts are not easily found in
Gdansk.

In full capacity, the single rack can supply 48CPU (96vCPU) at 2.4GHz + 120GiBish
of RAM + 2TiB HDD

I'll supply the distro with a bootable USB stick, install rancher on each of
the machines and create a cluster with control plane on one of the nodes and
the remaining nodes being workers

It will be awesome to configure the Prometheus + Grafana stack and Fluentd for
log collection, same as in the Google Cloud GKE Autopilot default cluster setup

I ran the RKE2 server on my local machine and managed to deploy all of the workloads, 
I am double-checking the configuration and stumbled upon this: https://ranchergovernment.com/,
pretty cool to be using government approved Kubernetes distro

## Monday Update

I bought a bunch of stuff to get the whole rack running:
- 2x power cables
- 4x ethernet
- 2x USB
- VGA-VGA
- VGA-HDMI
cannot connect to the nodes since none of my displays at home are compatible,
I'll buy a second hand tomorrow

## Thurdsay Update

I managed to get a display and configure the servers, currently running two nodes,
hosted the search service as well as the auth-gateway and the CRUD API for lancr

Currently using ngrok for tunneling the cluster, nodes are connected on LAN,
no switch - just a router

Just two nodes at the moment, still quite a bit of resources

![grafana](https://github.com/piotrostr/k8s-at-home/assets/63755291/bc2fa31f-c6ba-45dd-91f2-4aff2aca520f)

