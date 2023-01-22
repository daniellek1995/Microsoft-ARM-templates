$template_path = ".\WindowsVM\windowsVmTemaplate.json"
$rg_name = "danielle_Resource_group2"
#$dnsLabelPrefix = "windowsvm"
$resourceGroupName = (Get-AzResourceGroup -Name $rg_name).ResourceGroupName
$adminUsername = Read-Host -Prompt "Enter the administrator username"
$adminPassword = Read-Host -Prompt "Enter the administrator password" -AsSecureString
Write-Host($adminUsername)
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri $template_path `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword
#-dnsLabelPrefix $dnsLabelPrefix
