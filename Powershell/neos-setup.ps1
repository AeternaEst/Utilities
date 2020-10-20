# Variables
$neosSrcFolder = 'C:\Projects\neos\source'
$neosSharedSrcFolder = 'C:\Projects\NEoS-Shared'

# Open File Explorer
Invoke-Item $neosSrcFolder
Invoke-Item $neosSharedSrcFolder

# Open Browsers
Start-Process "https://sdc-prod.visualstudio.com/eBanking/_sprints/taskboard/NEoS_Isobar/eBanking/NEOS_Isobar https://sdc-prod.visualstudio.com/eBanking/_git/NEoS/pullrequests?_a=mine" -FilePath "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Process "https://stormdk-editor.sdcneos.local/restricted/fakelogin" -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

# Open Git
Start-Process "--cd=$neosSrcFolder" -FilePath "C:\Program Files\Git\git-bash.exe"
Start-Process "--cd=$neosSharedSrcFolder" -FilePath "C:\Program Files\Git\git-bash.exe"

# Open Visual Studio Code
Start-Process $neosSrcFolder -FilePath "C:\Program Files\Microsoft VS Code\Code.exe"
Start-Process $neosSharedSrcFolder -FilePath "C:\Program Files\Microsoft VS Code\Code.exe"