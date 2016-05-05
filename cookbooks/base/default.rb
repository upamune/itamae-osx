require_relative("../../common/common")
include_recipe "./taps.rb"

Common::BasePackages.each do |pkg|
  package pkg
end
