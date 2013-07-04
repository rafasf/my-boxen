class people::rafasf::applications {
  include zsh
  include tmux
  include iterm2::stable
  include skype
  include chrome
  include caffeine
  include quicksilver
  include sparrow
  include handbrake
  include dropbox
  include kindle
  include transmission
   
  class { 'intellij':
    edition => 'ultimate',
    version => '12.1.4'
  }
}
