class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCclP/NjmIGhq7UOihZuWLp0KgjOupvKevK+flenrNzk05PAHNOMgmli3CC7YUsjuf0u8xUHKDA1G+bQ3Os44z/mNx+9IZbapETI7JiPo2DK5Pdr8R017eT6N1s4AUp1KK1fDG9fnDcx3Ii3Ff4Fr5afyCQ3//jMLVDIJ+TgD2roKHsITF+W2+FbHkjnNdqeH+Wzpcc85HwwhT5yIx7ExanCHQruNhJXzGHhkqyWRuF4/GJvU2BY3uqLR+7ZHztfkUw51jaKFVcd+IT7fZhjUZlilvExnIQ7njDa0Qfi1DmCgABgPZEASR8gCS1+QloVOizdAaYWLGH7M9c8CeiATUB',
	}  
}
