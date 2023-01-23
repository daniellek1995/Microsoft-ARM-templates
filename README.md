# Microsoft-ARM-templates
---
In this Repo you will find the following scripts:
1. Create resource group scripts:/n 
deploy a resource group.
You need to provide the resource group name, and the subscription id.
2. Create storage account scripts:
deploy a new storage account 
3. Create windows vm scripts:
deploy a Windows Server with a few options for the VM. 
You need to provide the VM Name,admin username and password.
if you run the same script twice - you will need to change the network interface and the public ip address (or you can just delete the option from the JSON file).
4. create container scripts
deploy a container to storage account in order to add blobs later.
You'll need to provide the RS name, the container name and the storage account name.
6. create blobs and copy them from one storage account to another (without using AzCopy)
this script will create 100 txt files in the local computer, and then will upload it to the container we just 


## The Templates:
each template contains valus that needs to be changed 

**adminUsername**, **adminPassword** and **resourceGroup**.

Parameter         | Suggested value     | Description
:--------------- | :-------------      |:---------------------
**vmName** | The name of your Virtual Machine | The name of you Virtual Machine.
**VmSize** | Standard_B2s | The size of the VM.
**adminUsername** | adminusername | Usernames can be a maximum of 20 characters and cannot end in a period (".").
**adminPassword** | Complex Password | Password requirements between 12 to 72 characters and have lower and upper characters, a digit and a special character (Regex match [\W_])
**Location**| The default location | Select the geographic location for your resource group.
**dnsLabelPrefix** | dns-vmName | Unique DNS Name for the Public IP used to access the Virtual Machine
**virtualNetworkName** | vNet | Name of the VNET
**subnetName** | subnet | Name of the subnet in the virtual network
**networkSecurityGroupName** | SecGroupNet | Name of the Network Security Group
**Resource Group**| myResourceGroup |  That is the Resource Group that you need to deploy your resources.

Deployment can be using powerShell/Azure CLI/azure devops with creating the write YAML. 




