# SSH

| File | Description |
| ---- | ----------- |
| `0-use_a_private_key` | Connects to the server with the private key `~/.ssh/school` as user `ubuntu`. |
| `1-create_ssh_key_pair` | Creates a 4096-bit RSA key pair named `school` with passphrase `betty`. |
| `2-ssh_config` | SSH client config that uses `~/.ssh/school` and refuses password login. |
| `100-puppet_ssh_config.pp` | Puppet manifest that applies the same client configuration. |
