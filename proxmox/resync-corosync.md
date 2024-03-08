TL;DR: Promox clusters can lose synchronization if cluster changes take place while a node is offline. This results in the nodes that didn't receive the changes to present access list errors and fail to gain cluster information. On the side of the cluster that did get the update, these nodes will always appear offline, even if they are not.

To fix this, copy `/etc/corosync/corosync.conf` from an up to date node to the bad node.

On the bad node, run the following: `service corosync restart` and `service pve-cluster restart`.

The bad node should go green with the rest of the cluster after 15-30 seconds.

Assumptions: the bad node is online and has connectivity. If you don't have that, make sure you're plugged into the right ethernet ports, things are powered on, and the physical link is present between devices.
