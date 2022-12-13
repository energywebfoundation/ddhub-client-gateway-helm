# ddhub-client-gateway-api

![Version: 2.0.3](https://img.shields.io/badge/Version-2.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.1](https://img.shields.io/badge/AppVersion-1.1.1-informational?style=flat-square)

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
| clientgateway.envVars | object | `{}` | Common environment variables |
| clientgateway.extraEnvFrom | list | `[]` | Pass additional ConfigMaps or Secrets to env vars |
| clientgateway.scheduler.enabled | bool | `true` |  |
| clientgateway.scheduler.extraEnvVars | object | `{}` | Additional environment variables for scheduler |
| clientgateway.scheduler.image.pullPolicy | string | `"IfNotPresent"` |  |
| clientgateway.scheduler.image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-scheduler"` |  |
| clientgateway.scheduler.image.tag | string | `"1.1.1"` |  |
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
| clientgateway.ui.extraEnvVars | object | `{}` | Additional environment variables for ui |
| clientgateway.ui.image.pullPolicy | string | `"IfNotPresent"` |  |
| clientgateway.ui.image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-frontend"` |  |
| clientgateway.ui.image.tag | string | `"1.1.1"` |  |
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
| existingClaim.claimName | string | `"my-claim"` |  |
| existingClaim.enabled | bool | `false` |  |
| existingClaim.mountPath | string | `"/mnt/claim"` |  |
| extraLabels | object | `{}` | Extra lables to be added to all resources |
| fullnameOverride | string | `"ddhub-client-gateway"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"aemocontainerregistry.azurecr.io/ddhub-client-gateway-backend"` |  |
| image.tag | string | `"1.1.1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| initContainerCommand[0] | string | `"./node_modules/.bin/typeorm"` |  |
| initContainerCommand[1] | string | `"migrations:run"` |  |
| nameOverride | string | `"ddhub-client-gateway"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| probes.liveness | bool | `true` |  |
| probes.livenessInitialDelay | int | `0` |  |
| probes.livenessPeriodSeconds | int | `10` |  |
| probes.path | string | `"/api/v2/health"` |  |
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
