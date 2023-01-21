#source container 
$srcResourceGroupName = "danielle_Resource_group2"
$srcStorageAccountName = "daniellestoraget02"
$srcContainer = "container-01"
$srcStorageKey = Get-AzStorageAccountKey -Name $srcStorageAccountName `
    -ResourceGroupName $srcResourceGroupName 

$srcContext = New-AzStorageContext -StorageAccountName $srcStorageAccountName `
    -StorageAccountKey $srcStorageKey.Value[0]
    


#dest container 
$destResourceGroupName = "danielle_Resource_group2"
$destStorageAccountName = "daniellestoraget01"
$destContainer = "copied-container-data"

$destStorageKey = Get-AzStorageAccountKey -Name $destStorageAccountName `
    -ResourceGroupName $destResourceGroupName

$destContext = New-AzStorageContext -StorageAccountName $destStorageAccountName `
    -StorageAccountKey $destStorageKey.Value[0]
#creae a container in dest 
New-AzStorageContainer -Name $destContainer -Context $destContext -Permission Blob

$blob = Get-AzStorageBlob -Container $srcContainer -Context $srcContext | Select Name

$blobLength = $blob.Count - 1
Write-Host($blobLength)
$i = 1
for ($i = 1; $i -le $blobLength; $i++) {
    $SrcBlobName = $blob.GetValue($i).name
    Write-Host($SrcBlobName)
    $copyOperation = Start-AzStorageBlobCopy -SrcBlob $SrcBlobName `
        -SrcContainer $srcContainer `
        -Context $srcContext `
        -DestBlob $SrcBlobName `
        -DestContainer $destContainer `
        -DestContext $destContext `
        
    $copyOperation | Get-AzStorageBlobCopyState
}


#  in case the storage account is not empty : 
#  if ($checkForExistenceOfBlob) {
#     $DestBlobName = $srcContainer + '-' + $DestBlobName 
#     Write-Host("found one " + $DestBlobName)
# }