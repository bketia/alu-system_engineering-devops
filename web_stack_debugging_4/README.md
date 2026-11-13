# Web stack debugging #4

| File | Description |
| ---- | ----------- |
| `0-the_sky_is_the_limit_not.pp` | Puppet manifest that raises the Nginx open file limit (ULIMIT) from 15 to 4096 and restarts Nginx, so 100 concurrent requests no longer fail. |

## How the bug was found

Running `ab -c 100 -n 2000 localhost/` gave 943 failed requests. `/var/log/nginx/error.log` showed `Too many open files`, caused by `ULIMIT="-n 15"` in `/etc/default/nginx`.
