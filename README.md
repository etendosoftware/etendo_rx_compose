# 1. Clone the default configuration server

```plaintext
cd etendo_rx_compose
git clone https://github.com/etendosoftware/etendorx_default_config main/rxconfig
```
>The public and private keys needed to authenticate the connections are distributed by default in the `etendorx_default_config` repository, this credentials are only for **demo purposes**, in other case new keys have to be generated following the guide [Setup Etendo Rx autentication keys](https://docs.etendo.software/en/end-user-documentation/integrations/zapier/setup-etendorx-autentication-keys)

## 2. To run the dockerization execute:

```
docker-compose -p rx -f main/docker-compose.yaml --profile [all | base | zapier] up -d
```

|Profile |Services  |
|---|---|
| NONE |**zookeeper** <br>**kafka** <br>**debezium** <br>**postgres**|
|base|zookeeper <br> kafka <br> debezium <br> postgres <br> **config** <br> **das** <br> **auth** <br> **edge**|
|zapier|zookeeper <br> kafka <br> debezium <br> postgres <br> config <br> das <br> auth <br> edge <br> **zapier**|
|all|zookeeper <br> kafka <br> debezium <br> postgres <br> config <br> das <br> auth <br> edge <br> zapier <br> **debezium-ui** <br > **kafdrop**|

