#Shell to start the iisexpress with the path of the cleaning_robot_Api


#path where iisexpress is located
#Usually in c:\Program Files (x86)\IIS Express\iisexpress.exe
$iisExpressExe = '"c:\Program Files (x86)\IIS Express\iisexpress.exe"'

$path = (Resolve-path .)
Write-Host $path
Write-host "Starting site on port: $port"

#port of the site, for this we are using 38984
#path of the site, please use a path with no spaces like exampleD:\cleaning_robot_Api
$params = "/port:38984 /path:D:\cleaning_robot_Api"

$command = "$iisExpressExe $params"
cmd /c start cmd /k "$command"
Start-Sleep -m 1000
Write-Host "Site started"