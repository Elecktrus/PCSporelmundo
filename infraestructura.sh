az group create --location westeurope -n RG1
az storage account create -g RG1 --location westeurope -n ssgstorage1 --sku Standard_LRS --kind StorageV2
az functionapp create --consumption-plan-location westeurope --name ssgfunction1 --os-type Windows --resource-group RG1 --runtime dotnet --storage-account ssgstorage1