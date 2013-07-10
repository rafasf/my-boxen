class people::rafasf::osxconfigs {
  include boxen::security
  include osx::global::enable_keyboard_control_access
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps
  include osx::finder::unhide_library
  include osx::no_network_dsstores

  boxen::osx_defaults { 'large size':
    domain => 'com.apple.dock',
    key    => 'largesize',
    type   => 'int',
    value  => 53,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'not re-arrange spaces':
    domain => 'com.apple.dock',
    key    => 'mru-spaces',
    type   => 'bool',
    value  => false,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'screensaver top left corner':
    domain => 'com.apple.dock',
    key    => 'wvous-tl-corner',
    type   => 'int',
    value  => 5,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'screensaver top left corner modifier':
    domain => 'com.apple.dock',
    key    => 'wvous-tl-modifier',
    type   => 'int',
    value  => 0,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'enable magnification':
    domain => 'com.apple.dock',
    key    => 'magnification',
    type   => 'int',
    value  => 1,
    user   => $::boxen_user,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'airdrop in all interfaces':
    domain => 'com.apple.NetworkBrowser',
    key    => 'BrowseAllInterfaces',
    type   => 'bool',
    value  => true,
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'standard function keys':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.keyboard.fnState',
    type   => 'int',
    value  => 1,
    user   => $::boxen_user
  }
}
