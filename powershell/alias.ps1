Remove-Item Alias:cd
New-Alias -Name cd -Value z

function cdd
{
	Set-Location "~\..\*\dotfiles"
}

function cdh
{
	Set-Location "~"
}

function cdp
{
	Set-Location ~\Projects\
}

function cdl
{
	Set-Location ~\AppData\Local\
}

function nvi
{
	nvim .
}

function gss
{
	git status -s
}
