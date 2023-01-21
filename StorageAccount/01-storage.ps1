$rg = 'arm-storage-01'
$templateFile = '02-storage.json'
New-AzResourceGroupDeployment -Name 'storage02danielleko' -ResourceGroupName 'arm-storage-01' -TemplateFile '.\02-storage.json'
# -ResourceGroupName $rg
#-TemplateFile $templateFile 
#storageName 'storage02danielleko'
-storageSKU 'Standard_LRS'
# parameter


# run in terminal the script .\01-storage-ps1