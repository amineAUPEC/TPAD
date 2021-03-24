# Créer l'OU Utilisateurs dans le domaine heisenberg.org
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "DC=BLUESKY,DC=org"
# Créer l'OU Ordinateurs dans le domaine heisenberg.org
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "DC=BLUESKY,DC=org"

# Créer l'OU R&D dans l'OU Utilisateurs
New-ADOrganizationalUnit -Name "R&D" -Path "OU=Utilisateurs,DC=BLUESKY,DC=org"



# Créer l'OU Finance dans l'OU Utilisateurs
New-ADOrganizationalUnit -Name "Finance" -Path "OU=Utilisateurs,DC=BLUESKY,DC=org"

# Créer l'OU Admins dans l'OU Utilisateurs
New-ADOrganizationalUnit -Name "Admins" -Path "OU=Utilisateurs,DC=BLUESKY,DC=org"


# Créer l'OU OpenSpace dans l'OU Ordinateurs
New-ADOrganizationalUnit -Name "OpenSpace" -Path "OU=Ordinateurs,DC=BLUESKY,DC=org"



# Créer l'OU Bureau dans l'OU Ordinateurs
New-ADOrganizationalUnit -Name "Bureau" -Path "OU=Ordinateurs,DC=BLUESKY,DC=org"


$pass = ConvertTo-SecureString -AsPlainText "VitryGTR2019" -Force 
New-ADUser -Name "Pinkman" -Path "OU=R&D,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount

New-ADUser -Name "White" -Path "OU=R&D,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount

New-ADUser -Name "Saul" -Path "OU=Finance,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount

New-ADUser -Name "Mike" -Path "OU=Finance,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount

New-ADUser -Name "Gus" -Path "OU=Admins,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount

New-ADUser -Name "Salamanca" -Path "OU=Admins,OU=Utilisateurs,DC=BLUESKY,DC=org" -AccountPassword $pass -PassThru | Enable-ADAccount