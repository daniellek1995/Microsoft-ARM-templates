$account = Get-AzStorageAccount -ResourceGroupName "danielle_Resource_group" -Name "daniellestorageaccount03" -IncludeBlobRestoreStatus

$account.BlobRestoreStatus

# $account = Set-AzStorageAccount -ResourceGroupName "danielle_Resource_group" -Name "daniellestorageaccount01" -MinimumTlsVersion TLS1_1 -AllowBlobPublicAccess $true -AllowSharedKeyAccess $true
# $account.AllowBlobPublicAccess
