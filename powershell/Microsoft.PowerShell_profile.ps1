oh-my-posh init pwsh --config "~/dotfiles/oh-my-posh/pure.cw.omp.json" | Invoke-Expression

# Uncomment modules to run once. Unsure whether it hurts anything to leave them in.

# Steal from: 
# https://gist.github.com/shanselman/25f5550ad186189e0e68916c6d7f44c3?WT.mc_id=-blog-scottha

# Better cd with History:
# Install-Module z

# Install-Module -Name Terminal-Icons -Repository PSGallery
# Import-Module -Name Terminal-Icons

# Install-Module -Name PSReadLine
# if (-not (Get-Module -ListAvailable -Name PSReadLine))
# {
Import-Module PSReadLine
#}

function OnViModeChange
{
	if ($args[0] -eq 'Command')
	{
		# Set the cursor to a blinking block.
		Write-Host -NoNewLine "`e[1 q"
	} else
	{
		# Set the cursor to a blinking line.
		Write-Host -NoNewLine "`e[5 q"
	}
}

$PSReadLineOptions = @{
	PredictionSource = "History"
	PredictionViewStyle = "ListView"
	EditMode = "Vi"
	ViModeIndicator = "Script"
	ViModeChangeHandler = $Function:OnViModeChange
}
Set-PSReadLineOption @PSReadLineOptions

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

function nvi {
	nvim .
}

function gss {
	git status -s
}
