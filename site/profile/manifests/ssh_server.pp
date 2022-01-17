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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDdruWZg9+udo9UjCrXgmEBof2ucKhbMCXUI6wbCXXiPSCe6i988HyZSwSFpp1qoD+i7DoA0FW/boZLOdcTnGHtoGHyn92Aodv35ggz/Ug7ylSKULrWTKKFSaQqb/5FcT0Am873V1O6OOzGPR/ZXuAzZkVSssRakPUkAzvRikcopr0MqMkxieBN2bLI8SN00xOukEnCnomDv4RZGXpJ+EMzQsfMS0Zr5WPweYOeCijLjH/jM2OHkC1UVfghT8ZtkbWqJjOJaXgZnO74sn/GmAXRxxOJ70R60xiTeg1VoW0+2pkIialT3ouArNxl3y0yfejZBL3J/IZuoqe3oDsIK/bf',
  }
}
