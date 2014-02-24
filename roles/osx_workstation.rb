name "osx_workstation"
description "Mac OS X workstations"

run_list(
  "recipe[build-essential]",
  "recipe[git]",
  "recipe[ruby_build]",
  "recipe[rbenv::user]",
  "recipe[users]",
  "recipe[mac_os_x::settings]",
  "recipe[mac_os_x::firewall]",
  "recipe[iterm2]",
  "recipe[virtualbox]"
)
