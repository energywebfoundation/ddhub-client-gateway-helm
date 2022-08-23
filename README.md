# ddhub-client-gateway-api

![Version: 1.4.0](https://img.shields.io/badge/Version-1.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A Helm chart for Kubernetes
### Introduction
This is a repository with helm chart for DDHub Client Gateway application. For more information about DDHub Client Gateway please check the [repository](https://github.com/energywebfoundation/ddhub-client-gateway).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| clientgateway.config.cache_server_url | string | `"https://identitycache-staging.energyweb.org/v1"` | Sets the Energy Web IAM cache server URL, used to cache identities (as it can be expensive to rely only on querying smart contract data). |
| clientgateway.config.chain_id | int | `73799` | Sets the chain ID of the blockchain network. Options: 73799 (Volta), 246 (EWC) |
| clientgateway.config.dsb_base_url | string | `"https://ddhub-demo.energyweb.org"` | The URL of the DSB Message Broker you want to connect to. Trailing / allowed. |
| clientgateway.config.event_server_url | string | `"https://identitycache-staging.energyweb.org/"` | Sets the Energy Web IAM events server URL, used to receive notification of approved DSB role claims. |
| clientgateway.config.events_emit_mode | string | `"BULK"` | Defines the format for messages pushed over a real-time communication channel. If bulk mode is chosen, messages will be sent as an array. At every 1 second interval, the gateway will emit an array of the latest messages received. If single mode is chosen, messages will be sent individually. Options: BULK, SINGLE |
| clientgateway.config.events_max_per_second | int | `2` | Defines how many events should be pushed per second, regardless of mode chosen (see above). |
| clientgateway.config.mtls_enabled | bool | `true` | Sets mTLS flag |
| clientgateway.config.next_public_parent_namespace | string | `"ddhub.apps.energyweb.iam.ewc"` | Sets the parent namespace for UI route validation |
| clientgateway.config.node_env | string | `"test"` | Sets the application running NODE environment. 'production' can be used for production mode. |
| clientgateway.config.opentelemetry_enabled | bool | `false` | Sets to enable opentelemetry. |
| clientgateway.config.opentelemetry_exporter | string | `""` | Sets opentelemetry exporter. enum ["ZIPKIN"] |
| clientgateway.config.opentelemetry_otel_collector_url | string | `""` | Sets opentelemetry collector url. |
| clientgateway.config.opentelemetry_otel_environment | string | `""` | Sets opentelemetry telemetry environment. default: "local" |
| clientgateway.config.opentelemetry_otel_ignored_routes | string | `""` | Sets opentelemetry collector ignored routes. comma seperated, default: "health,api/v2/health" |
| clientgateway.config.opentelemetry_otel_service_name | string | `""` | Sets opentelemetry telemetry service name. default: "ddhub-client-gateway" |
| clientgateway.config.parent_namespace | string | `"ddhub.apps.energyweb.iam.ewc"` | Sets the Energy Web IAM application namespace. DSB related roles, such as user and messagebroker should fall under this namespace. |
| clientgateway.config.port | int | `3333` | Define the port the gateway will run on. |
| clientgateway.config.rpc_url | string | `"https://volta-rpc.energyweb.org/"` | Sets the blockchain RPC node to connect to retreive state from and submit transactions to. Should match the network given in CHAIN_ID. |
| clientgateway.config.secret_engine | string | `"vault"` | Sets the secret engine for storing DID private key. it can be Vault/AWS SSM/Azure KeyVault/GCP Secret Manager. |
| clientgateway.config.secret_engine_endpoint | string | `"http://vault.ddhub-dev.svc:8200"` | Sets the secret engine endpoint. the secret engine server URL. |
| clientgateway.config.secret_prefix | string | `"ddhub/"` | Sets the secret prefix in the secret engine. |
| clientgateway.config.websocket | string | `"NONE"` | Select WebSocket mode depending on architecture (i.e. preference for inbound or outbound connections). By default, the gateway will run a WebSocket server on /events. However, it can also operate as a client with additional configuration (see below). Alternatively, this functionality can be turned off. Options: SERVER, CLIENT, NONE |
| clientgateway.config.websocket_pooling_timeout | int | `834000` | Define the websocket message pooling timeout. |
| clientgateway.config.websocket_protocol | string | `""` | Sets the protocol the WebSocket client should request access to. Acceptable protocols are defined by the WebSocket server, however, this can also be left undefined. Note that if WEBSOCKET is set to SERVER this variable is ignored. The server will only accept connection requests on the dsb-messages protocol. |
| clientgateway.config.websocket_reconnect | bool | `false` | Define whether the WebSocket client should reconnect on connection error/close. |
| clientgateway.config.websocket_reconnect_max_retries | int | `10` | Define how many times the WebSocket client should attempt reconnection with the server upon receving connection error/close. |
| clientgateway.config.websocket_reconnect_timeout | int | `10000` | Define the interval between receiving a connection error/close and attempting to reconnect, in milliseconds. |
| clientgateway.config.websocket_url | string | `""` | Sets the URL of the WebSocket server the client should try to connect to. Required if WEBSOCKET is set to CLIENT. |
| clientgateway.scheduler.appConfig.DID_REGISTRY_ADDRESS | string | `"0xc15d5a57a8eb0e1dcbe5d88b8f9a82017e5cc4af"` |  |
| clientgateway.scheduler.enabled | bool | `true` |  |
| clientgateway.scheduler.image.pullPolicy | string | `"IfNotPresent"` |  |
| clientgateway.scheduler.image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-scheduler"` |  |
| clientgateway.scheduler.image.tag | string | `"latest"` |  |
| clientgateway.scheduler.podAnnotations | object | `{}` |  |
| clientgateway.scheduler.probes.liveness | bool | `true` |  |
| clientgateway.scheduler.probes.livenessInitialDelay | int | `0` |  |
| clientgateway.scheduler.probes.livenessPeriodSeconds | int | `10` |  |
| clientgateway.scheduler.probes.readiness | bool | `true` |  |
| clientgateway.scheduler.probes.readinessInitialDelay | int | `0` |  |
| clientgateway.scheduler.probes.readinessPeriodSeconds | int | `10` |  |
| clientgateway.scheduler.resources | object | `{}` |  |
| clientgateway.ui.autoscaling.enabled | bool | `false` |  |
| clientgateway.ui.autoscaling.maxReplicas | int | `100` |  |
| clientgateway.ui.autoscaling.minReplicas | int | `1` |  |
| clientgateway.ui.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| clientgateway.ui.enabled | bool | `true` |  |
| clientgateway.ui.image.pullPolicy | string | `"IfNotPresent"` |  |
| clientgateway.ui.image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-frontend"` |  |
| clientgateway.ui.image.tag | string | `"latest"` |  |
| clientgateway.ui.podAnnotations | object | `{}` |  |
| clientgateway.ui.port | int | `80` |  |
| clientgateway.ui.probes.liveness | bool | `true` |  |
| clientgateway.ui.probes.livenessInitialDelay | int | `0` |  |
| clientgateway.ui.probes.livenessPeriodSeconds | int | `10` |  |
| clientgateway.ui.probes.readiness | bool | `true` |  |
| clientgateway.ui.probes.readinessInitialDelay | int | `0` |  |
| clientgateway.ui.probes.readinessPeriodSeconds | int | `10` |  |
| clientgateway.ui.replicaCount | int | `1` |  |
| clientgateway.ui.resources | object | `{}` |  |
| clientgateway.ui.service.port | int | `80` |  |
| clientgateway.ui.service.type | string | `"ClusterIP"` |  |
| config.configRefName | object | `{}` |  |
| config.enabled | bool | `false` |  |
| config.secretRefName | object | `{}` |  |
| existingClaim.claimName | string | `"my-claim"` |  |
| existingClaim.enabled | bool | `false` |  |
| existingClaim.mountPath | string | `"/mnt/claim"` |  |
| fullnameOverride | string | `"ddhub-client-gateway"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-backend"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."appgw.ingress.kubernetes.io/ssl-redirect" | string | `"true"` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"azure/application-gateway"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"ddhub-gateway-test.energyweb.org"` |  |
| ingress.hosts[0].paths[0].backend.serviceName | string | `"ddhub-client-gateway"` |  |
| ingress.hosts[0].paths[0].backend.servicePort | int | `80` |  |
| ingress.hosts[0].paths[0].path | string | `"/docs"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[1].backend.serviceName | string | `"ddhub-client-gateway"` |  |
| ingress.hosts[0].paths[1].backend.servicePort | int | `80` |  |
| ingress.hosts[0].paths[1].path | string | `"/api"` |  |
| ingress.hosts[0].paths[1].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[2].backend.serviceName | string | `"ddhub-client-gateway"` |  |
| ingress.hosts[0].paths[2].backend.servicePort | int | `80` |  |
| ingress.hosts[0].paths[2].path | string | `"/docs-json"` |  |
| ingress.hosts[0].paths[2].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[3].backend.serviceName | string | `"ddhub-client-gateway"` |  |
| ingress.hosts[0].paths[3].backend.servicePort | int | `80` |  |
| ingress.hosts[0].paths[3].path | string | `"/events"` |  |
| ingress.hosts[0].paths[3].pathType | string | `"Prefix"` |  |
| ingress.hosts[0].paths[4].backend.serviceName | string | `"ddhub-client-gateway-ui"` |  |
| ingress.hosts[0].paths[4].backend.servicePort | int | `80` |  |
| ingress.hosts[0].paths[4].path | string | `"/"` |  |
| ingress.hosts[0].paths[4].pathType | string | `"Prefix"` |  |
| ingress.tls[0].hosts[0] | string | `"ddhub-gateway-test.energyweb.org"` |  |
| ingress.tls[0].secretName | string | `"ddhub-tls-secret"` |  |
| nameOverride | string | `"ddhub-client-gateway"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| probes.liveness | bool | `true` |  |
| probes.livenessInitialDelay | int | `0` |  |
| probes.livenessPeriodSeconds | int | `10` |  |
| probes.readiness | bool | `true` |  |
| probes.readinessInitialDelay | int | `60` |  |
| probes.readinessPeriodSeconds | int | `10` |  |
| pvc.accessMode | string | `"ReadWriteOnce"` |  |
| pvc.capacity | string | `"1Gi"` |  |
| pvc.enabled | bool | `false` |  |
| pvc.mountPath | string | `"/mnt/azure"` |  |
| pvc.storageClassName | string | `"default"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| sealedSecret.annotations | object | `{}` |  |
| sealedSecret.enabled | bool | `false` |  |
| sealedSecret.encryptedData | object | `{}` |  |
| secretProviderClass.enabled | bool | `false` |  |
| secretProviderClass.name | string | `"my-provider"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
