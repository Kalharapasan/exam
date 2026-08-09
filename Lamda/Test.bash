New-AzVm `
    -ResourceGroupName 'ICT461' `
    -Name 'ICT461VM' `
    -Location 'centralindia' `
    -Image 'MicrosoftWindowsServer:WindowsServer:2022-datacenter-azure-edition:latest' `
    -VirtualNetworkName 'ICT461Vnet' `
    -SubnetName 'ICT461SubNet' `
    -SecurityGroupName 'ICT461SecurityGroupName' `
    -PublicIpAddressName 'ICT461PublicIpAddress' `
    -OpenPorts 80,3389