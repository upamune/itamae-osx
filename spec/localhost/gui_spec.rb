require "spec_helper"
require_relative '../../common/common'

describe command "brew tap | grep -q 'caskroom/cask'" do
  its (:exit_status) {should eq 0}
end

Common::GuiPackages.each do |pkg| 
  describe command "brew cask list | grep -q '#{pkg}'" do
    its (:exit_status) {should eq 0}
  end
end

