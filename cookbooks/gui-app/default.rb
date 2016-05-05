require_relative("../../common/common")

# Install brew cask
execute 'tap cask' do
  user 'upamune'
  command 'brew tap caskroom/cask'
end

HOME_PATH=ENV['HOME']

Common::GuiPackages.each do |pkg|
  execute "Install #{pkg}" do
    user 'upamune'
    command "brew cask install --appdir='#{HOME_PATH}/Applications' '#{pkg}'"
  end
end

