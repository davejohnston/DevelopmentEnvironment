class development_environment {

	$user = 'dajohnst'
	$username = 'davejohnston'
	$email = 'dave.johnston@icloud.com'


	class {'development_environment::user' : 
		user => $user,
	}

	class {'development_environment::vim' :
		require => Class['development_environment::user']
	}

	class {'development_environment::git' :
		user => $user,
		name => $username,
		email => $email,
		require => Class['development_environment::user'],
	}

    class {'development_environment::keys' :
        require => Class['development_environment::user'],
    }
}

include development_environment
