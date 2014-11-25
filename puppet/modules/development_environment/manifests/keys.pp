class development_environment::keys {


$authorized_keys = "
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC82yCFOD1+wRSDvrfEYSNnYcFn531j9bBgRMnxBPooJXYxFqpGrAQZUau6KQeu+GKXd6iTu0RJb4NMA+vggQ5NA34zI9efMOUV4ud9WpaS3kfi9ju491cQsSz/JsuBL9NAVfzw8f0u/0+7hkFn9jG+PY24UcQRRRznbvI1As+8s8KEG0TKdbl68+taDjuhunQc6MVVDWQBZpTq6/7S4lrDqjtXohdGxwAIdHi37+jToA3JsEC4QfYrG2JblOm6PttTmGY87WHhBm4Jyus0MD8683JibDRTTZTL+ZHmJadLq0x0+ZmIkGY3ToxnYqHHmtX6uq/AX0JQZjONr90MKb7b
"

	file { "/home/$user/.ssh/authorized_keys" :
		ensure	=> file,
		content => $authorized_keys,
		owner	=> $development_environment::user,
		group	=> $development_environment::user,
        mode    => '0600',
	}

}
