# posh-git: git prompt (overwritten by oh-my-posh) and tab-autocomplete 
if (-not (Get-Module -ListAvailable -Name posh-git))
{
	Write-Output 'Installing posh-git'
	Install-Module posh-git -Force
}
if (-not (Get-Module -Name posh-git))
{
	Import-Module posh-git 
}

if (-not (Get-Module -ListAvailable -Name PSReadLine))
{
	Write-Output 'Installing PSReadLine'
	Install-Module PSReadLine -Force
}
# Setting will automatically import PSReadLine to the session
$PSReadLineOptions = @{
	PredictionSource = "History"
	PredictionViewStyle = "ListView"
	EditMode = "Vi"
	ViModeIndicator = "Script"
	ViModeChangeHandler = $Function:OnViModeChange
}
Set-PSReadLineOption @PSReadLineOptions

if (-not (Get-Module -ListAvailable -Name Terminal-Icons))
{
	Write-Output 'Installing Terminal-Icons'
	Install-Module Terminal-Icons -Force
}
if (-not (Get-Module -Name Terminal-Icons))
{
	Import-Module Terminal-Icons 
}

# Better cd
if (-not (Get-Module -ListAvailable -Name z))
{
	Write-Output 'Installing z'
	Install-Module z -Force
}
