# Windows Server 2022 Azure Virtual Machine

New-AzVm `
    -ResourceGroupName 'kalharaResourceGroup' `
    -Name 'myVM' `
    -Location 'centralindia' `
    -Image 'MicrosoftWindowsServer:WindowsServer:2022-datacenter-azureedition:latest' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'mySubnet' `
    -SecurityGroupName 'myNetworkSecurityGroup' `
    -PublicIpAddressName 'myPublicIpAddress' `-OpenPorts 80,3389

# Ubuntu Server VM
New-AzVm `
    -ResourceGroupName 'myResourceGroup' `
    -Name 'myUbuntuVM' `
    -Location 'centralindia' `
    -Image 'Canonical:ubuntu-24_04-lts:server:latest' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'mySubnet' `
    -SecurityGroupName 'myNetworkSecurityGroup' `
    -PublicIpAddressName 'myPublicIpAddress' `
    -OpenPorts 22,80


# Ubuntu Server 22.04 LTS

New-AzVm `
    -ResourceGroupName 'myResourceGroup' `
    -Name 'UbuntuVM' `
    -Location 'centralindia' `
    -Image 'Canonical:0001-com-ubuntu-server-jammy:22_04-lts-gen2:latest' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'mySubnet' `
    -SecurityGroupName 'myNetworkSecurityGroup' `
    -PublicIpAddressName 'myPublicIpAddress' `
    -OpenPorts 22

# Red Hat Enterprise Linux 

New-AzVm `
    -ResourceGroupName 'myResourceGroup' `
    -Name 'RHELVM' `
    -Location 'centralindia' `
    -Image 'RedHat:RHEL:9-lvm-gen2:latest' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'mySubnet' `
    -SecurityGroupName 'myNetworkSecurityGroup' `
    -PublicIpAddressName 'myPublicIpAddress' `
    -OpenPorts 22

# Windows Server 2025

New-AzVm `
    -ResourceGroupName 'myResourceGroup' `
    -Name 'Windows2025VM' `
    -Location 'centralindia' `
    -Image 'MicrosoftWindowsServer:WindowsServer:2025-datacenter-azureedition:latest' `
    -VirtualNetworkName 'myVnet' `
    -SubnetName 'mySubnet' `
    -SecurityGroupName 'myNetworkSecurityGroup' `
    -PublicIpAddressName 'myPublicIpAddress' `
    -OpenPorts 80,3389

