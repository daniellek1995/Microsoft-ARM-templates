# Microsoft-ARM-templates
---
In this Repo you will find the following templates/scripts:
1.Create resource group scripts:  
deploy a resource group.
you need to provide **resource group name**, **suscribtion id**.
2.Create storage account scripts:
deploy a new storage account 
you need to provide **resource group name**, **suscribtion id**,  **storage account name**.
3.Create windows vm scripts:
deploy a Windows Server with a few options for the VM. 
You need to provide **adminUsername**, **adminPassword** and **resourceGroup**.
if you run the same script twice - you will need to change the network interface and the public ip address (or you can just delete the option from the JSON file).
4.Create container scripts:
deploy a container to an existing storage account in order to add blobs later.
You need to provide **resource group name**, **storage account name** and **container name**..
6. create blobs and copy them from one storage account to another (without using AzCopy)
this script will create 100 txt files in the local computer, and then will upload it to the container we just 


Deployment can be using powerShell/Azure CLI/azure devops with creating the write YAML. 



