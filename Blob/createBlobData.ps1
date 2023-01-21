#Set variables
$path = "C:\projects\txt\" 
$containerName = "container-01"
$resourceGroupName = "danielle_Resource_group2"
$storageAccontName = "daniellestoraget02"
$Context = (Get-AzStorageAccount -ResourceGroupName $resourceGroupName -AccountName $storageAccontName).Context
$i = 1
for ($i = 1; $i -le 100; $i++) {
    New-Item -ItemType File -Path "$path\file_$i.txt"
    $filepath = "$($path)\file_$i.txt"
    Add-Content -Path $filepath "file number $i"
    Set-AzStorageBlobContent -File $filepath -Container $containerName -Context $Context
}
#check how many files exists in this storage account
$blobsInContainer = Get-AzStorageBlob -Container $containerName -Context $Context
Write-Host($blobsInContainer.Count)