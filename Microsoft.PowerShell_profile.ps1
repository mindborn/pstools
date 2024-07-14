#Install-Module PS-Menu
Import-Module PS-Menu

function ccd(){
	$list=@('.') + @('..') + (dir -Directory)
	cls
	echo ((Get-Item .).FullName)
	$s=(menu $list)
	cd $s
	if($s -ne '.')
	{
		ccd(0)
	}
}

#oh-my-posh init pwsh --config 'C:\users\manoj\tiwahu.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:\users\manoj\star.omp.json' | Invoke-Expression
