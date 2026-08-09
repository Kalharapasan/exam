#create Resouce Group
New-AzResourceGroup -Name '[Resource Group Name]' -Location '[Location Name]'

# Create VM
New-AzVm  `
    -ResourceGroupName '[Resource Group Name]' `
    -Name '[VM Name]' `
    -Location '[Location Name]' `
    -Image '[image]' `
    -VirtualNetworkName '[Network Name]' `
    -SubnetName '[Subnet Name]' `
    -SecurityGroupName '[Security Group Name]' `
    -PublicIpAddressName  '[Public Ip Address Name]' `
    -OpenPorts [Port Number] `

# Check Status
Get-AzVM  -ResourceGroupName '[Resource Group Name]' -Name '[VM Name]' -Status

# Find Ip address
Get-AzPublicIpAddress -ResourceGroupName '[Resource Group Name]' | Select-Object -Property Name, IpAddress

# Delete VM
Remove -AzResourceGroup -Name '[Resource Group Name]'

###################################################################################################################

# Step 1: Create the Azure Storage Account
New-AzStorageAccount `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalharastorage2026' `
    -Location 'centralindia' `
    -SkuName 'Standard_LRS' `
    -Kind 'StorageV2'

# Step 2: Retrieve the context of the created Storage Account
$ctx = (Get-AzStorageAccount -ResourceGroupName 'kalharaResourceGroup' -Name 'kalharastorage2026').Context

# Step 3: Create a Blob Container inside the Storage Account for uploading files
New-AzStorageContainer `
    -Name 'myblobcontainer' `
    -Context $ctx `
    -Permission Blob

###################################################################################################################

# Step 1: Create an App Service Plan (using the Free F1 Tier)
New-AzAppServicePlan `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalharaAppPlan' `
    -Location 'centralindia' `
    -Tier 'Free' `
    -WorkerSize 'Small'

# Step 2: Create the Web App linked to the App Service Plan
New-AzWebApp `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalhara-webapp-2026' `
    -Location 'centralindia' `
    -AppServicePlan 'kalharaAppPlan'


###################################################################################################################

# Step 1: Create the dependent resources required for the ML Workspace
# 1.1 Create Storage Account for ML artifacts
New-AzStorageAccount -ResourceGroupName 'kalharaResourceGroup' -Name 'kalharamlstore2026' -Location 'centralindia' -SkuName 'Standard_LRS'

# 1.2 Create Key Vault for storing secrets and credentials
New-AzKeyVault -ResourceGroupName 'kalharaResourceGroup' -Name 'kalhara-ml-kv' -Location 'centralindia'

# 1.3 Create Application Insights for monitoring and diagnostics
New-AzApplicationInsights -ResourceGroupName 'kalharaResourceGroup' -Name 'kalhara-ml-insights' -Location 'centralindia'

# Step 2: Retrieve Resource IDs of the dependent resources
$storageId = (Get-AzStorageAccount -ResourceGroupName 'kalharaResourceGroup' -Name 'kalharamlstore2026').Id
$kvId = (Get-AzKeyVault -ResourceGroupName 'kalharaResourceGroup' -Name 'kalhara-ml-kv').ResourceId
$appInsightsId = (Get-AzApplicationInsights -ResourceGroupName 'kalharaResourceGroup' -Name 'kalhara-ml-insights').Id

# Step 3: Create the Azure Machine Learning Workspace
New-AzMLWorkspace `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalharaMLWorkspace' `
    -Location 'centralindia' `
    -StorageAccount $storageId `
    -KeyVault $kvId `
    -ApplicationInsight $appInsightsId

###################################################################################################################

# Step 1: Create a logical Azure SQL Server (you will be prompted to enter admin credentials)
New-AzSqlServer `
    -ResourceGroupName 'kalharaResourceGroup' `
    -ServerName 'kalhara-sql-server' `
    -Location 'centralindia' `
    -SqlAdministratorCredentials (Get-Credential)

# Step 2: Create a SQL Database under the SQL Server
New-AzSqlDatabase `
    -ResourceGroupName 'kalharaResourceGroup' `
    -ServerName 'kalhara-sql-server' `
    -DatabaseName 'mySampleDatabase' `
    -Edition 'Basic'

###################################################################################################################

# Azure Virtual Network (VNet) & Subnet
# Step 1: Define a Subnet configuration
$subnet = New-AzVirtualNetworkSubnetConfig `
    -Name 'mySubnet' `
    -AddressPrefix '10.0.1.0/24'

# Step 2: Create the Virtual Network with the Subnet
New-AzVirtualNetwork `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'myVNet' `
    -Location 'centralindia' `
    -AddressPrefix '10.0.0.0/16' `
    -Subnet $subnet

###################################################################################################################

# Azure Key Vault
# Step 1: Create an Azure Key Vault
New-AzKeyVault `
    -ResourceGroupName 'kalharaResourceGroup' `
    -VaultName 'kalharaKeyVault2026' `
    -Location 'centralindia'

# Step 2: Store a Secret inside the Key Vault
$secretValue = ConvertTo-SecureString 'MySuperSecretPassword123!' -AsPlainText -Force
Set-AzKeyVaultSecret `
    -VaultName 'kalharaKeyVault2026' `
    -Name 'DbPassword' `
    -SecretValue $secretValue


###################################################################################################################
# Azure Cosmos DB Account (NoSQL Database)
# Step 1: Create a Cosmos DB Account (SQL / Core API)
New-AzCosmosDBAccount `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalhara-cosmos-2026' `
    -Location 'centralindia' `
    -ApiKind 'Sql'

# Step 2: Create a SQL Database within Cosmos DB
New-AzCosmosDBSqlDatabase `
    -ResourceGroupName 'kalharaResourceGroup' `
    -AccountName 'kalhara-cosmos-2026' `
    -Name 'MyCosmosDb'


###################################################################################################################
# Azure Container Registry (ACR)
# Step 1: Create an Azure Container Registry (Basic Tier)
New-AzContainerRegistry `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalhararegistry2026' `
    -Location 'centralindia' `
    -Sku 'Basic'

###################################################################################################################
# Azure Kubernetes Service (AKS) Cluster
# Step 1: Create an Azure Kubernetes Service (AKS) Cluster with 2 Nodes
New-AzAksCluster `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalharaAKSCluster' `
    -Location 'centralindia' `
    -NodeCount 2 `
    -GenerateSshKey


###################################################################################################################
# Azure Cognitive Services / AI Services (Computer Vision / OpenAI)
# Step 1: Create an Azure Cognitive Services Account
New-AzCognitiveServicesAccount `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'kalharaAIAccount' `
    -Type 'CognitiveServices' `
    -SkuName 'S0' `
    -Location 'centralindia'