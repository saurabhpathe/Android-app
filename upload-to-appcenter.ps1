$token = "1529b44330a0ef6069a7991411330f9810f2457c"
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
