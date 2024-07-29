# docker-chromium
openvpn + chromium docker image

## Build docker image

```bash
docker build -t docker-chromium .
```

## VPN configuration

Take a look in https://github.com/dperson/openvpn-client

## Enabling chromium to access your xorg

```bash
xhost +local:
```
