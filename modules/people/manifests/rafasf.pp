class people::rafasf (
  $home = $people::rafasf::params::home
) inherits people::rafasf::params {
  include people::rafasf::osxconfigs
  include people::rafasf::platforms
  include people::rafasf::repositories
  include people::rafasf::applications
}
