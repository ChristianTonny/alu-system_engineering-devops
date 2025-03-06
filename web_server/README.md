# Web Server Configuration

This project contains scripts for configuring a web server with Nginx on Ubuntu 16.04 LTS.

## Server Information
- IP Address: 54.162.15.4
- Username: ubuntu
- SSH Key: ~/.ssh/school

## Tasks

### 0. Transfer a file to your server
- Script: `0-transfer_file`
- Transfers a file from client to server using scp
- Accepts 4 parameters: file path, server IP, username, and SSH key path
- Example usage: `./0-transfer_file some_file.txt 54.162.15.4 ubuntu ~/.ssh/school`

### 1. Install nginx web server
- Script: `1-install_nginx_web_server`
- Installs and configures Nginx to listen on port 80
- Returns a page containing "Holberton School" when queried at root
- Example usage (on server): `sudo ./1-install_nginx_web_server`

### 2. Setup a domain name
- File: `2-setup_a_domain_name`
- Contains the domain name for the server
- Configured with an A record pointing to the web-01 IP address (54.162.15.4)

### 3. Redirection
- Script: `3-redirection`
- Configures Nginx for a 301 redirect from /redirect_me to another page
- Example usage (on server): `sudo ./3-redirection`

### 4. Not found page 404
- Script: `4-not_found_page_404`
- Configures Nginx with a custom 404 page containing "Ceci n'est pas une page"
- Example usage (on server): `sudo ./4-not_found_page_404`

### 5. Design a beautiful 404 page
- File: `5-design_a_beautiful_404_page.html`
- A custom designed 404 page that still contains "Ceci n'est pas une page"

## How to Use These Scripts

1. Transfer the scripts to your server:
   ```
   scp -r web_server ubuntu@54.162.15.4:~/
   ```

2. Connect to your server:
   ```
   ssh ubuntu@54.162.15.4
   ```

3. Make the scripts executable:
   ```
   chmod +x ~/web_server/0-transfer_file ~/web_server/1-install_nginx_web_server ~/web_server/3-redirection ~/web_server/4-not_found_page_404
   ```

4. Run the scripts as root:
   ```
   sudo ~/web_server/1-install_nginx_web_server
   sudo ~/web_server/3-redirection
   sudo ~/web_server/4-not_found_page_404
   ```

## Requirements
- All scripts are executable
- All scripts pass Shellcheck (version 0.3.7) without errors
- First line of all scripts: `#!/usr/bin/env bash`
- Second line of all scripts: Comment explaining what the script does
- No use of systemctl for restarting processes 