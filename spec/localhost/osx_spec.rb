require 'spec_helper'
require_relative '../../common/common'

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

# describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
#   it { should be_enabled }
#   it { should be_running }
# end

