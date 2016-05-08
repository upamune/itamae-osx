require_relative '../../common/common'

# Install brew cask
execute 'tap cask' do
  user 'upamune'
  command 'brew tap caskroom/cask'
end


HOME_PATH=ENV['HOME']

# TODO: fix tap
execute 'tap aquaskk' do
  user 'upamune'
  command 'brew tap upamune/homebrew-aereal_casks'
end

Common::GUI_FORMULA.each do |formula|
  if formula.hasTap
    execute "Tap #{formula.tap}" do
      user 'upamune'
      command "brew tap '#{formula.tap}'"
    end
  end

  execute "Install #{formula.package}" do
    user 'upamune'
    command "brew cask install --appdir='#{HOME_PATH}/Applications' '#{formula.package}'"
  end
end
