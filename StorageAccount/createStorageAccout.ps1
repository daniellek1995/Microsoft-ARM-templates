#params
$name = "danielle_Resource_group2"
$my_template = ".\StorageAccount\storageTemplate.json"
$deployment_name = "new-storage-account-2"
$storage_name = "daniellestoraget02"
$SKU = "Standard_GRS"


$my_resource_group = $name
#Select-AzureRmSubscription -SubscriptionId a8108c2b-496c-424d-8347-ecc8afb6384c

# a8108c2b-496c-424d-8347-ecc8afb6384c
Connect-AzAccount -Tenant 72f988bf-86f1-41af-91ab-2d7cd011db47
Select-AzSubscription a8108c2b-496c-424d-8347-ecc8afb6384c
New-AzResourceGroupDeployment `
    -Name $deployment_name `
    -ResourceGroupName $name `
    -TemplateFile $my_template `
    -storageName $storage_name `
    -storageSKU $SKU