# Deploy to Azure Web App for Containers action

This action deploys a ACR container to a Azure Web App for Containers instance

## Inputs

### `webapp_name`

**Required** Name of the Azure Web App for Containers instance

### `resource_group`

**Required** Name of the resource group with the web app resides

### `image`

**Required** Docker image name

### `tag`

**Optional** Docker image tag - defaults to current commit SHA

### `registry`

**Required** The name of the Azure Container Registry, minus the .azurecr.io

### `tenant`

**Required** The tenant where all the web app resources are placed

### `service_principal`

**Required** Service Principal with Contributor role on the Web App

### `service_principal_password`

**Required** The Service Principal credentials

## Setting up a Service Principal

```bash
az ad sp create-for-rbac -n "azwebapp-deploy" --skip-assignment
az role assignment create --assignee <spID> --scope <resourceID of the ACR> --role "Contributor"
```
