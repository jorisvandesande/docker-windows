$unixPwd = ((Get-Location) -as [string]).replace('C:\', '/c/').replace('\', '/')
$scriptUnixPath = (Split-Path -parent $MyInvocation.MyCommand.Definition).replace('C:\', '/c/').replace('\', '/')
# shell command to load "profile" in .ashrc
$insert = "if [ ! -e `".inserted`" ]; then echo `"source $scriptUnixPath/profile`" >> .ashrc; touch .inserted; fi"

boot2docker start
boot2docker shellinit | Invoke-Expression
boot2docker ssh $insert
boot2docker ssh
