# Microsoft-ARM-templates
---
![PowerShell](https://user-images.githubusercontent.com/71592856/214279247-d8eaae5a-972a-45de-b288-9d6105406068.svg) ![Microsoft_Azure_Logo](https://user-images.githubusercontent.com/71592856/214279449-5d1ab8f5-aca4-4937-ac2f-3ff78181746a.svg) <br />

In this Repo you will find the creating templates/scripts of the following things:
1. Resource group:  <br />
The scripts deploy a resource group. <br />
you need to provide **resource group name**, **suscribtion id**. <br />
2. Storage account: <br />
The script deploy a new storage account using JSON ARM template and powershell. <br />
You need to provide **resource group name**, **suscribtion id**,  **storage account name**. <br />
3. Windows VM: <br />
The script deploy a Windows Server with a few options for the VM using JSON ARM template and powershell. <br />
You need to provide **adminUsername**, **adminPassword** and **resourceGroup**. <br />
If you run the same script twice - you will need to change the network interface and the public ip address (or you can just delete the option from the JSON file).
4. Container: <br />
The script deploy a container to an existing storage account in order to add blobs later using powrshell script. <br />
You need to provide **resource group name**, **storage account name** and **container name**. <br />
5. Blobs create blobs and copy them from one storage account to another (without using AzCopy) <br />
This script will create 100 txt files in the local computer, and then will upload it to the container we just  <br />


Deployment can be using powerShell/Azure CLI/azure devops with creating the write YAML. 



