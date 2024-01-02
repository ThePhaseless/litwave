# Interstellar

Interstellar is a linux server setup that uses docker-compose to run a number of services connected to an internal and external reverse proxy to bypass CGNAT. To Run the project, you will need:

- Domain
- Cloudflare Account
- SMTP Account (for example, gmail)
- Machine with public IP address
- Your own machine for all the services

## Environment Variables

Set the following environment variables in a `.env` file in the host/proxy folders of the project.

### For Proxy

``` env
CF_DNS_API_EMAIL =
CF_DNS_API_TOKEN =
PUBLIC_HOSTNAME =
HOST_IP =
PROXY_IP =
SMTP_USERNAME =
SMTP_PASSWORD =
AUTHELIA_SESSION_SECRET =
AUTHELIA_JWT_SECRET =
AUTHELIA_ENCRYPTION_KEY =
```

### For Host

``` env
SSD_PATH =
JBOD_PATH =
CONFIG_PATH =
MEDIA_PATH =
```

## Setup

Just run the `install.sh` script in the root of the project. This will install all the services and setup the reverse proxy.
