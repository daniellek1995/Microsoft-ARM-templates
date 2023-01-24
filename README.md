# Microsoft-ARM-templates
---
In this Repo you will find the creating templates/scripts of the following things:
1.Resource group:  
the scripts deploy a resource group.
you need to provide **resource group name**, **suscribtion id**.
2.Storage account:
the script deploy a new storage account using JSON ARM template and powershell 
you need to provide **resource group name**, **suscribtion id**,  **storage account name**.
3.windows VM:
the script deploy a Windows Server with a few options for the VM using JSON ARM template and powershell. 
You need to provide **adminUsername**, **adminPassword** and **resourceGroup**.
if you run the same script twice - you will need to change the network interface and the public ip address (or you can just delete the option from the JSON file).
4.Container:
the script deploy a container to an existing storage account in order to add blobs later using powrshell script.
You need to provide **resource group name**, **storage account name** and **container name**..
5.Blobs create blobs and copy them from one storage account to another (without using AzCopy)
this script will create 100 txt files in the local computer, and then will upload it to the container we just 


Deployment can be using powerShell/Azure CLI/azure devops with creating the write YAML. 



