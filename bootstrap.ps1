# Allow local scripts to run unsigned
Set-ExecutionPolicy RemoteSigned

# ------------- Global Packages -------------

# Chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# PSGet
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex


# Variables
$cores = @("nodejs")
$packages = @("http-server")
$gits = @("git.install", "git-credential-winstore")
$editors = @("SublimeText3", "SublimeText3.PackageControl")
$browsers = @("Firefox", "GoogleChrome")
$tools = @("cmder", "dropbox")
$files = @("winrar")
$usefull = @("spotify")

# Installing Packages
foreach ($core in $cores) { choco install $core -y }
foreach ($package in $packages) { choco install $package -y }
foreach ($git in $gits) { choco install $git -y }
foreach ($editor in $editors) { choco install $editor -y }
foreach ($browser in $browsers) { choco install $browser -y }
foreach ($tool in $tools) { choco install $tool -y }
foreach ($file in $files) { choco install $file -y }
foreach ($thing in $usefull) { choco install $thing -y } 

# ------------ Bower Specific -------------

npm install -g bower

# ------------ Visual Studio --------------

choco install visualstudio2013ultimate -y
choco install vs2013.4 -y

# ------------- PSGet Modules -------------
$modules = ("go", "posh-git", "PSReadline")

#Installing Modules
foreach ($module in $modules) { Install-Module $module }
