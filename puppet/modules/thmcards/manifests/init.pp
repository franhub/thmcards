class thmcards {

  $base_path = "/vagrant"

  file { "/home/vagrant/start.sh":
    owner => "vagrant",
    group => "vagrant",
    content => template("thmcards/start.sh.erb"),
    mode => "744"
  }

  file { "/home/vagrant/configure.sh":
    owner => "vagrant",
    group => "vagrant",
    content => template("thmcards/configure.sh.erb"),
    mode => "744"
  }
  
  class { "motd":
    template => "thmcards/motd.erb"
  }
}
