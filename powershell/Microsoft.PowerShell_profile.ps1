oh-my-posh init pwsh --config "~/dotfiles/oh-my-posh/pure.cw.omp.json" | Invoke-Expression

# Uncomment modules to run once. Unsure whether it hurts anything to leave them in.

# Steal from: 
# https://gist.github.com/shanselman/25f5550ad186189e0e68916c6d7f44c3?WT.mc_id=-blog-scottha

# Better cd with History:
# Install-Module z

# Install-Module -Name Terminal-Icons -Repository PSGallery
# Import-Module -Name Terminal-Icons

# Install-Module -Name PSReadLine
# Import-Module PSReadLine
# Set-PSReadLineOption -PredictionViewStyle ListView

function pni {
	Set-Location C:\Users\charles\Projects\notion-integration
}
