@minLength(3)
@maxLength(25)
@description('This is storage account name parameter')
param storageName string
param rglocation string='eastus'
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: rglocation
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
