class development_environment::vim {

	$vimrc = "
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType Makefile setlocal noexpandtab
set pastetoggle=<F2>
"


	package { ['vim-common',
		  'vim-enhanced'] : }

	file { "/home/$development_environment::user/.vimrc" :
		ensure	=> file,
		content => $vimrc,
		owner	=> $development_environment::user,
		group	=> $development_environment::user,
	}

}
