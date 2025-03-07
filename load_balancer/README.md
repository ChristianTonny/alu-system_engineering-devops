# Load Balancer

This project configures a web infrastructure with a load balancer to distribute traffic between two web servers.

## Files

### 0-custom_http_response_header

This script configures Nginx on a web server with a custom HTTP header:
- Installs and configures Nginx
- Adds a custom HTTP header `X-Served-By` with the value of the server's hostname
- Enables the firewall and allows Nginx HTTP and SSH traffic
- Creates a simple "Hello World!" page

Usage:
```
sudo ./0-custom_http_response_header
```

### 1-install_load_balancer

This script installs and configures HAproxy on a load balancer server:
- Installs HAproxy
- Configures HAproxy to distribute traffic to web-01 and web-02 using a roundrobin algorithm
- Enables HAproxy to be managed via an init script

Usage:
```
sudo ./1-install_load_balancer
```

## Infrastructure

The infrastructure consists of:
- 2 web servers (web-01 and web-02) running Nginx with a custom header
- 1 load balancer (lb-01) running HAproxy to distribute traffic between the web servers

The load balancer uses a roundrobin algorithm to distribute requests evenly between the web servers. 