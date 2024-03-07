oh-my-posh init pwsh --config "~/dotfiles/oh-my-posh/pure.cw.omp.json" | Invoke-Expression

# Steal from: 
# https://gist.github.com/shanselman/25f5550ad186189e0e68916c6d7f44c3?WT.mc_id=-blog-scottha

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

. ~\..\*\dotfiles\powershell\alias.ps1
. ~\..\*\dotfiles\powershell\module.ps1
