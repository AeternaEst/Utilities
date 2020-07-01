
# Creates a certificate that is automatically imported into the "Trusted Root Certification Authorities"
# The certificate should be imported manually into the Personal store by opening certmgr afterwards

$thumbprint = (New-SelfSignedCertificate -DnsName "*.sdcneos.local" -Subject "*.sdcneos.local" -CertStoreLocation cert:\LocalMachine\My -NotAfter (Get-Date).AddMonths(120) -FriendlyName "*.sdcneos.local").Thumbprint 
$pwd = ConvertTo-SecureString -String "password" -Force -AsPlainText
Export-PfxCertificate -Password $pwd -Cert cert:\localmachine\My\$thumbprint -FilePath "C:\Users\nicholas.lindboe\OneDrive - Dentsu Aegis Network\Documents\Misc\temp\neos.pfx"
Import-PfxCertificate -Password $pwd -Cert cert:\localmachine\Root -FilePath "C:\Users\nicholas.lindboe\OneDrive - Dentsu Aegis Network\Documents\Misc\temp\neos.pfx"