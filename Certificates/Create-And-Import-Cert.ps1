
# Creates a certificate that is automatically imported into the "Trusted Root Certification Authorities"
# The certificate should be imported manually into the Personal store by opening certmgr afterwards

$thumbprint = (New-SelfSignedCertificate -DnsName "BunningsTest" -Subject "BunningsTest" -CertStoreLocation cert:\LocalMachine\My -NotAfter (Get-Date).AddMonths(120) -FriendlyName "SelfSigned Cert for BunningsTest").Thumbprint 
$pwd = ConvertTo-SecureString -String "password" -Force -AsPlainText
Export-PfxCertificate -Password $pwd -Cert cert:\localmachine\My\$thumbprint -FilePath "E:\Temp\BunningTest.pfx"
Import-PfxCertificate -Password $pwd -Cert cert:\localmachine\Root -FilePath "E:\Temp\BunningTest.pfx"