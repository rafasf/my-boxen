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
  include istatmenus

  class { 'istatmenus::override':
    names => ['/Library/Application Support/iStat Menus 4/extras/iStatMenusDrives.menu', '/Library/Application Support/iStat Menus 4/extras/iStatMenusMemory.menu', '/Library/Application Support/iStat Menus 4/extras/iStatMenusNetwork.menu', '/Library/Application Support/iStat Menus 4/extras/iStatMenusDateAndTimes.menu', '/Library/Application Support/iStat Menus 4/extras/iStatMenusBattery.menu', '/Library/Application Support/iStat Menus 4/extras/MenuCracker.menu', '/System/Library/CoreServices/Menu Extras/Volume.menu']
  }

  class { 'intellij':
    edition => 'ultimate',
    version => '12.1.4'
  }
}
