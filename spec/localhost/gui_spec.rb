require "spec_helper"
require_relative '../../common/common'

describe command "brew tap | grep -q 'caskroom/cask'" do
  its (:exit_status) {should eq 0}
end

ENV['HOMEBREW_CASK_OPTS']="--appdir=#{ENV['HOME']}/Applications"

Common::GuiPackages.each do |pkg| 
  describe command "brew cask list '#{pkg}' | grep -q '#{pkg}'" do
    its (:exit_status) {should eq 0}
  end
end

