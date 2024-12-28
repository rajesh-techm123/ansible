# Define variables
$artifactoryUrl = "https://your-artifactory-url/artifactory/path/to/your/file"
$destinationPath = "C:\path\to\save\file"
$username = "your-username"
$password = "your-password"

# Create the basic authentication header
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("$username:$password"))

# Download the file
Invoke-WebRequest -Uri $artifactoryUrl -OutFile $destinationPath -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)}