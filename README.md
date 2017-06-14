# docker-hetzner-failover-ip
Docker image providing the hetzner failover ip python script and python with the required modules
Uses `/etc/failover-ip.conf` as configuration file which IS NOT provided.

## Use-case
This docker container is ment to be used in a rancher service as `start-once`
container with one-per-host scheduling.
- each container mounts the hosts configuration file which is already present
  for use with keepalived
- each container is ran once uppon start-upgrade. This is not intentional but
  can not be avoided.
- the stopped containers can be ran once again by pressing 'start', running the
  command and grabbing the failover-ip to the host it was run on.
