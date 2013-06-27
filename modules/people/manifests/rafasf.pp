class people::rafasf {
  include zsh
  include iterm2::stable
  include tmux
  include java
  include clojure
  include skype
  include chrome
  include caffeine
  include quicksilver
  include sparrow
  include handbrake
  include dropbox
  
  include osx::global::enable_keyboard_control_access
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps
  include osx::finder::unhide_library
  include osx::no_network_dsstores

  $home = "/Users/rferreir"
  $dots = "${home}/.dots"
  $vim  = "${home}/.vim"

  repository {
    $vim:
      source   => 'rafasf/vimfiles';
    $dots:
      source   => 'rafasf/dots';
  }

  exec { 'get-vim-bundles':
    cwd => $vim,
    command => 'git submodule update --init',
    require => Repository[$vim]
  }

  exec { 'run-vundle':
    cwd => $vim,
    command => 'vim +BundleInstall! +qall',
    require => Exec['get-vim-bundles']
  }

  file { "${home}/.vimrc":
   ensure => 'link',
   target => "${vim}/vimrc"
  }

  file { "${home}/.zshenv":
   ensure => 'link',
   target => "${dots}/.zshenv"
  }

  file { "${home}/.zshrc":
   ensure => 'link',
   target => "${dots}/.zshrc"
  }

  file { "${home}/.gitconfig":
   ensure => 'link',
   target => "${dots}/.gitconfig"
  }

  file { "${home}/.tmux.conf":
   ensure => 'link',
   target => "${dots}/.tmux.conf"
  }
   
  class { 'intellij':
    edition => 'ultimate',
    version => '12.1.4'
  }
}
