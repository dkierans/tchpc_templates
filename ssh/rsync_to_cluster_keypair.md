Instructions are quite simple in order to avoid typing password when ssh-ing to a compute host (eg kelvin/lonsdale) from rsync.

1. Login to rsync

2. Type the following to create an ssh key-pair
	```bash
	ssh-keygen 	
	```
	a. Keypair saved in file id_rsa by default, rename if you wish (.ssh/your_filename)
	b. Leave passphrase empty.
	c. Key's randomart image should print if successful.

3. Copy *public key* to compute host. 
Replace `cluster` with name of host (eg kelvin)
Replace `id_rsa.pub` with `your_filename.pub` if non-default filename used above.
	```bash
	ssh-copy-id ~/.ssh/id_rsa.pub cluster
	```

4. Test if you can now access given host without password.
	```bash
	ssh cluster
	```
	
Note: This also works for related ssh commands such as scp.
