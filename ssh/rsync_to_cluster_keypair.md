<!--
@file README.md
@brief User friendly instructions for setting up quality of life ssh features.
@author D.Kierans (dkierans@tcd.ie)
@version 1.1
@date 2022-09-16
-->
<style type="text/css">
ol ol { list-style-type: lower-alpha; } 
ol ol ol { list-style-type: lower-roman; }
</style>

Instructions are quite simple. Used to avoid typing password when ssh-ing to a compute host (eg kelvin/lonsdale) from rsync.

1. Login to rsync

2. Type the following to create an ssh key-pair for rsync.
	```bash
	ssh-keygen 	
	```
    1. Keypair saved in file id_rsa by default, rename if you wish (.ssh/your_filename)
    2. Leave passphrase empty.
    3. Key's randomart image should print if successful.

3. Copy *public key* to compute host. 
Replace `cluster` with name of cluster (eg kelvin).
Replace `id_rsa.pub` with `your_filename.pub` if non-default filename used above.
	```bash
	ssh-copy-id -i ~/.ssh/id_rsa.pub cluster
	```

4. Test if you can now access given host without password.
	```bash
	ssh cluster
	```
	
Note: This also works for related ssh commands such as scp.
