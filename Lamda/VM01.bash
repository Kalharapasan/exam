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
Get-AzVM-ResourceGroupName '[Resource Group Name]' -Name '[VM Name]' -Status

# Find Ip address
Get-AzPublicIpAddress-ResourceGroupName '[Resource Group Name]' |Select-ObjectName,PublicIpAddressName

# Delete VM
Remove-AzResourceGroup -Name '[Resource Group Name]'