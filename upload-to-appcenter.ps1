$token = "739256c4c5772f5c2840fa51d4f4912bf62be1c0"
$file_path = "$env:System_ArtifactsDirectory/app-debug.apk"
$app_name = "Android-App"
$group = "Androidapp"
$release_notes = "Automated build from Azure DevOps"

# Create a hashtable to store headers
$headers = @{
    "Content-Type" = "application/json"
    "X-API-Token" = $token  # Include the API token in the X-API-Token header
}

$body = @{
  "file_path" = $file_path
  "app_name" = $app_name
  "group" = $group
  "release_notes" = $release_notes
} | ConvertTo-Json

$uri = "https://api.appcenter.ms/v0.1/apps/saurabhpathe/Android-App/uploads/releases"

# Make the API request with headers
Invoke-RestMethod -Uri $uri -Method Post -Headers $headers -Body $body
