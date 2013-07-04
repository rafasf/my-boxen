class people::rafasf::osxconfigs {
  include osx::global::enable_keyboard_control_access
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps
  include osx::finder::unhide_library
  include osx::no_network_dsstores
}
