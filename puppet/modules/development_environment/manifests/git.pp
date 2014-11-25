class development_environment::git($user, $name, $email) {

$gitconfig = "
[user]
	name = $name
	email = $email
"

	package { 'git' : }

	file { "/home/$user/.gitconfig" :
		ensure	=> file,
		content => $gitconfig,
		owner	=> $user,
		group	=> 'users',
	}

}
