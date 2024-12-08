# Define the paths and filenames
$sourceDir = "C:\app"
$inputFile = "WiFiProfile.mobileconfig"
$outputFile = "WiFiProfile_signed.mobileconfig"
$caCert = "ca_certificate.pem"
$caKey = "ca_key.pem"

# Change to the source directory
Set-Location -Path $sourceDir

# Run OpenSSL command to sign the profile
openssl smime -sign -in $inputFile -out $outputFile -signer $caCert -inkey $caKey -outform der -nodetach

Write-Output "Profile signed and saved as $outputFile in $sourceDir"
