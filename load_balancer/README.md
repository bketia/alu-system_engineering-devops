# Load balancer

| File | Description |
| ---- | ----------- |
| `0-custom_http_response_header` | Installs Nginx with an `X-Served-By` header set to the server's hostname. |
| `1-install_load_balancer` | Installs HAProxy on lb-01 to roundrobin traffic to web-01 and web-02. |

Servers: web-01 `18.175.244.187`, web-02 `3.8.123.78`, lb-01 `35.176.241.5`.
