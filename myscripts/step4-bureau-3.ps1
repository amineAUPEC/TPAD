Rename-Computer -NewName "BUREAU-3" 

New-NetIPAddress –InterfaceAlias "Ethernet"  –IPAddress 198.51.2.203 –PrefixLength 24 







 Set-DNSClientServerAddress –interfaceIndex 3  –ServerAddresses ("198.51.2.3")

 Add-Computer -DomainName bluesky.org  -Credential Administrateur@bluesky.org 


Restart-Computer

