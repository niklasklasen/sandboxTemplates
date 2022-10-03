targetScope = 'subscription'

@description('Azure Region where Resource Group will be created.  No Default')
param location string

@description('Name of the Resource Group. No Default')
param resourceGroupName string

@description('Tags to be userd for the resource group')
param tags object = {}

module resourceGroup '../../modules/resourceGroup/resourceGroup.bicep' = {
  name: 'resourceGroupDeployment'
  params: {
    resourceGroupName: resourceGroupName
    location: location
    tags: tags
  }
}
