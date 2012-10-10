class base_packages {
 $package_list = [openssh-clients, nmap, git, keychain, man-db, puppet, ruby, ruby-devel, vim-enhanced, python-devel, tmux, strace]
 package { $package_list: ensure => present }
}
