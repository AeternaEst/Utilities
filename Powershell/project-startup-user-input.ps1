# Variables
$reduxSagaSrcFolder = 'C:\Projects\Local\Frontend-Experiments\React\Redux-Saga'
$reduxSagaWebsitePath = "file:///$($reduxSagaSrcFolder)/index.html"

$sitecoreJssSrcFolder = 'C:\Projects\Local\SitecoreJss\src\Frontend\my-first-jss-app'
$sitecoreJssWebsitePath = 'http://sitecorejss.blog.9.2.xp0.sc/'

$projectInfo = @(
[pscustomobject]@{Name="Redux-Saga";SrcFolder=$reduxSagaSrcFolder;WebSitePath=$reduxSagaWebsitePath}
[pscustomobject]@{Name="SitecoreJss";SrcFolder=$sitecoreJssSrcFolder;WebSitePath=$sitecoreJssWebsitePath}
)

# Receive input
$selectedOption = Read-Host "Type the number of the project you wish to select: 1. Redux-Saga 2. SitecoreJss"
$selectedObject = $projectInfo[[int]$selectedOption - 1]

Write-Host "Starting $($selectedObject.Name) $($selectedObject.SrcFolder)"

# Open File Explorer
Invoke-Item $selectedObject.SrcFolder

# Open Browsers
Start-Process $selectedObject.WebSitePath -FilePath "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Process $selectedObject.WebSitePath -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

# Open Git
Start-Process "--cd=$($selectedObject.SrcFolder)" -FilePath "C:\Program Files\Git\git-bash.exe"

# Open Visual Studio Code
Start-Process $selectedObject.SrcFolder -FilePath "C:\Program Files\Microsoft VS Code\Code.exe"

#Open Powershell
Start-Process -WorkingDirectory $selectedObject.SrcFolder-FilePath "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"