require "spec_helper"
require_relative '../../common/common'

describe command "brew tap | grep -q 'caskroom/cask'" do
  its (:exit_status) {should eq 0}
end

ENV['HOMEBREW_CASK_OPTS']="--appdir=#{ENV['HOME']}/Applications"

Common::GUI_FORMULA.each do |formula|
  # brew tap されているかはチェックしない
  describe command "brew cask list '#{formula.package}' | grep -q '#{formula.package}'" do
    its (:exit_status) {should eq 0}
  end
end
