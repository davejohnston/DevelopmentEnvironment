class development_environment::user ($user) {

	group { "$user" :
		ensure => present,
	}

	user { "$user" :
		name => $user,
		home => "/home/$user",
		ensure => present,
		groups => $user,
		require => Group["$user"],
	}

	file { "/home/$user" :
		ensure => directory,
		owner	=> $user,
		group	=> $user,
		require => User["$user"],
	}
}
