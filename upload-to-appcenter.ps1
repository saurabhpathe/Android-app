$token = "739256c4c5772f5c2840fa51d4f4912bf62be1c0"
$file_path = "$env:System_ArtifactsDirectory/app-debug.apk"
$app_name = "Android-App"
$group = "Androidapp"
$release_notes = "Automated build from Azure DevOps"

$body = @{
  token = $token
  file_path = $file_path
  app_name = $app_name
  group = $group
  release_notes = $release_notes
} | ConvertTo-Json

$uri = "https://api.appcenter.ms/v0.1/apps/saurabhpathe/Android-App/uploads/releases"

Invoke-RestMethod -Uri $uri -Method Post -Headers @{"Content-Type"="application/json"} -Body $body
