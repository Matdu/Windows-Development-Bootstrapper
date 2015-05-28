# Allow local scripts to run unsigned
Set-ExecutionPolicy RemoteSigned

# ------------- Global Packages -------------

# Chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# PSGet
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex


# Variables
$cores = @("nodejs")
$packages = @("yo", "bower", "nodemon", "karma-cli", "http-server", "grunt-cli")
$gits = @("git.install -params '"/GitAndUnixToolsOnPath"'", "git-credential-winstore")
$editors = @("SublimeText3", "SublimeText3.PackageControl")
$browsers = @("Firefox", "GoogleChrome")
$vms = @("virtualbox", "vagrant")
$tools = @("cmder", "dropbox", "autohotkey")
$files = @("winrar")

# Installing Packages
foreach ($core in $cores) { choco install $core }
foreach ($package in $packages) { choco install $package }
foreach ($git in $gits) { choco install $git }
foreach ($editor in $editors) { choco install $editor }
foreach ($browser in $browsers) { choco install $browser }
foreach ($vm in $vms) { choco install $vm }
foreach ($tool in $tools) { choco install $tool }
foreach ($file in $files) { choco install $file }

# ------------- PSGet Modules -------------
$modules = ("go", "posh-git", "PSReadline")

#Installing Modules
foreach ($module in $modules) { Install-Module $module }
