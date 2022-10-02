@description('Azure Region where Resource Group will be created.  No Default')
param location string

@description('Name of the Resource Group. No Default')
param resourceGroupName

param tags object = {}

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    evnvironment: 
  }
}
