#create azure resource group
#params

# name convention
# {region}-{org}-{env}-{workload}-{instance}-{type}

$resourceGroupName = "E2-DEV-01-rg"
$location_name = "eastus"

$all_locations = Get-AzLocation
$location = ($all_locations | Where-Object { $_.displayname -eq $location_name }).DisplayName
Write-Host $location " location"
#check if resource group exist
if ((Get-AzResourceGroup -Name $resourceGroupName).ResourceGroupName -match $resourceGroupName) {
    Write-Host -ForegroundColor Yellow "resource group is already exists"
}
else {
    #create resource group
    Write-Host -ForegroundColor Green "resource group created successfully"
    New-AzResourceGroup -Name $resourceGroupName -Location $location
}