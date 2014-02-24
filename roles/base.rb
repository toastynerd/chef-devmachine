name "base"
description "Base Config for all workstations"
#used for both osx and linux

override_attributes(
  "ruby_build" => {
    "upgrade" => true,
    "install_pkgs" => []
  },                                      
  "rbenv" => {
  "install_pkgs" => [],
  "user_installs" => [
    {
      "user" => "toasty",
      "rubies" => ["2.0.0-p353", "2.1.0"],
      "global" => "2.1.0",
      "gems" => {
        "2.1.0" => [
          {"name" => "bundler"},
          {"name" => "rails", "version" => "4.0.3"},
          {"name" => "heroku"},
          {"name" => "pry"}
        ],
        "2.1.0-p353" => [
          {"name" => "bundler"},
          {"name" => "rails", "version" => "4.0.3"},
          {"name" => "heroku"},
          {"name" => "pry"}
        ]
        }
    }]                     
  }
)
