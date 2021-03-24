Rename-Computer -NewName "OPENSPACE-7"

New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 198.51.2.17 -PrefixLength 24




Set-DnsClientServerAddress -InterfaceIndex 2 -ServerAddresses ("198.51.2.3")


Add-Computer -DomainName bluesky.org -Credential Administrateur@bluesky.org

Restart-Computer

