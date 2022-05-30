# Run the docker-compose

## 1. Create keys
You have to create the private and public keys and save in `/main/resources` directory following the next commands:

Private key generation
```
  openssl genrsa -out main/resources/private.pem 2048
```    
Public key generation
````
  openssl rsa -in main/resources/private.pem -pubout -outform PEM -out main/resources/public_key.pem
````

Private key generation with PCKS8 format
````
 openssl pkcs8 -topk8 -inform PEM -in main/resources/private.pem -out main/resources/private_key.pem -nocrypt
````

> **Note:** The key file names are important, because the dokerization use this specific key files.


## 2. To run the dockerization execute:

```
docker-compose -p rx -f main/docker-compose.yaml up -d
```
