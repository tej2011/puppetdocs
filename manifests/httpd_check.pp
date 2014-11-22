service {"httpd":
ensure => "running" ,
}

#$packages = ['telnet', 'gcc','vim-enhanced','tree',]

#package{
#$packages:
#   ensure=> latest
#}

exec { 'extract_files':
  command => "tar xvfz /tmp/test.tgz  -C /var/tmp",
  path    => "/bin",
  creates => '/var/tmp/etc',
  onlyif  => 'ls  /tmp/test.tgz'


}
