# Docker container for running openssl
This container is used with Pihvi.io local development environment for creating a CA certificate

## Example
```bash
# Create 2048bit CA certificate
docker run --rm -it -v /tmp/certs:/certs pihvio/openssl req -x509 -newkey rsa:2048 -days 7300 -keyout /certs/ca.key \
    -out /certs/ca.crt -nodes \
    -subj "/O=Pihvi CA/OU=Pihvi self-signed certificate /CN=Pihvi local development Root CA"
```

## Maintainers
[Onni Hakala](https://github.com/onnimonni)

## License
MIT