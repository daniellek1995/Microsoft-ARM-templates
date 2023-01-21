# Create variables
$containerName = "container-01"
$ctx = New-AzStorageContext -StorageAccountName "daniellestoraget02" -UseConnectedAccount
# Create a single container
New-AzStorageContainer -Name $containerName -Context $ctx -Permission Blob
#  Get-AzStorageContainer -Name $containerName -Context $ctx write-Host
# $container = Get-AzStorageContainer -Name $containerName -Context $ctx 
# $containerProperties = $container.BlobContainerClient.GetProperties()
# Write-Host $container.Name "properties:"
# $containerProperties.Value

# Get-AzStorageBlob -Container $containerName -Context $ctx |
# Select-Object -Property Name

# $StorageAccountKeys = Get-AzStorageAccountKey -ResourceGroupName "danielle_Resource_group" -Name "daniellestorageaccount02"
# Set-AzStorageBlobContent -Container $containerName -File ".\test" -Blob "blob1"
