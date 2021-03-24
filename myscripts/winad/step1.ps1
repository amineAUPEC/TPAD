New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 198.51.2.3 -PrefixLength 24
Rename-Computer -NewName "DC-1"
Restart-Computer