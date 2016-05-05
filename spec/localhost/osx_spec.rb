require 'spec_helper'
require_relative '../../common/common'

describe command "test $(which brew)" do
  its(:exit_status) { should eq 0 }
end

Common::BasePackages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

Common::LanguagePackages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

Common::ToolPackages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

Common::FontPackage.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# dotfiles
describe file(ENV['HOME'] + '/dotfiles') do
  it { should be_directory }
end

# describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
#   it { should be_enabled }
#   it { should be_running }
# end

