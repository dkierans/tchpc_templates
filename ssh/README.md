# tchpc_templates/ssh

This folder provides useful sample files for using ssh to connect to Research IT clusters. Files include:
 - config:
	Sample configuration file for connecting to rsync and cluster nodes.
 - rsync_to_cluster_keypair.md:
	Setup ssh keypair such that you can login to cluster node from rsync without typing password.

## config
Allows users to connect to rsync using "ssh rsync" instead of "ssh -l username rsync.tchpc.tcd.ie"

Allows users to connect to cluster node using single command outside TCD network eg "ssh kelvin"

Also works with scp commands
```bash
scp local_file.txt rsync:~/rsync_folder/rsync_file.txt
```	

Read file for usage details.


## rsync_to_cluster_keypair.md:
Setup ssh keypair such that you can login to cluster node from rsync without typing password.

Once on rsync, or when ssh-tunneling. Allows users to ssh to cluster nodes without need
for password.
```bash
$rsync > ssh kelvin
```
Jumps straight to kelvin without prompting for password.

Read file for setup instructions.

