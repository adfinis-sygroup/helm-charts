# openshift-etcd-backup

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Chart for openshfit-etcd-backup solution

**Homepage:** <https://github.com/adfinis-sygroup/openshift-etcd-backup>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/openshift-etcd-backup>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/openshift-etcd-backup>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| backup.dirname | string | `"+etcd-backup-%F-%H-%M-%S"` |  |
| backup.expiretype | string | `"days"` |  |
| backup.keepcount | string | `"10"` |  |
| backup.keepdays | string | `"30"` |  |
| backup.schedule | string | `"0 0 * * *"` |  |
| backup.subdir | string | `"/"` |  |
| fullnameOverride | string | `"etcd-backup"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256"` |  |
| image.tag | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector."node-role.kubernetes.io/master" | string | `""` |  |
| persistence.capacity | string | `"10Gi"` |  |
| persistence.hostPath.enabled | bool | `true` |  |
| persistence.hostPath.path | string | `"/opt/etcd-backups"` |  |
| persistence.nfs.enabled | bool | `false` |  |
| persistence.nfs.path | string | `"/etcd-backups"` |  |
| persistence.nfs.server | string | `"example.com"` |  |
| persistence.provisionned.enabled | bool | `false` |  |
| persistence.provisionned.storageClass | string | `""` |  |
| persistence.reclaimPolicy | string | `"Retain"` |  |
| resources | object | `{}` |  |
| securityContext.privileged | bool | `true` |  |
| securityContext.runAsUser | int | `0` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations[0].effect | string | `"NoSchedule"` |  |
| tolerations[0].key | string | `"node-role.kubernetes.io/master"` |  |

## About this chart

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This chart
is part of the action behind this commitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.

----------------------------------------------
Autogenerated from chart metadata using [helm-docs](https://github.com/norwoodj/helm-docs/)