#!/usr/bin/env bash
set -e

echo "Logging into Azure..."
az login --service-principal -u ${INPUT_SERVICE_PRINCIPAL} -p ${INPUT_SERVICE_PRINCIPAL_PASSWORD} --tenant ${INPUT_TENANT}

echo "Deploying ${INPUT_IMAGE}:${INPUT_TAG} to ${INPUT_WEBAPP_NAME}@${INPUT_RESOURCE_GROUP}"
az webapp config container set --docker-custom-image-name ${INPUT_IMAGE}:${INPUT_TAG} --docker-registry-server-url https://${INPUT_REGISTRY}.azurecr.io --name ${INPUT_WEBAPP_NAME} --resource-group ${INPUT_RESOURCE_GROUP}