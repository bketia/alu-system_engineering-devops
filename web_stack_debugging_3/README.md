# Web stack debugging #3

| File | Description |
| ---- | ----------- |
| `0-strace_is_your_friend.pp` | Puppet manifest that fixes the `.phpp` typo in `/var/www/html/wp-settings.php`, which made Apache return a 500 error. |

## How the bug was found

Attaching `strace -p <apache_pid>` to the Apache process and running `curl 127.0.0.1` showed a failed attempt to open `class-wp-locale.phpp` (ENOENT). The file is actually named `class-wp-locale.php`.
