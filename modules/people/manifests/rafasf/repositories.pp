class people::rafasf::repositories (
  $home = $people::rafasf::params::home
) {
  $dots = "${home}/.dots"
  $vim  = "${home}/.vim"

  repository {
    $vim:
      source   => 'rafasf/vimfiles';
  }

  repository {
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
}
