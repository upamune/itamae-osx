require_relative '../common/formula'

class Common
  BasePackages = [
    'git',
    'neovim',
    'tmux',
    'vim',
    'zsh',
  ]

  LanguagePackages = [
      'go',
      'nvm',
      'python',
      'python3',
      'rbenv',
      'ruby',
      'ruby-build',
  ]

  FontPackage = [
      'ricty',
  ]

  ToolPackages = [
      'ctags',
      'git-now',
      'httpie',
      'imagemagick',
      'jq',
      'peco',
      'the_silver_searcher',
      'tig',
      'tree',
  ]

  GUI_FORMULA = [
      Formula.new('google-chrome'),
      Formula.new('alfred'),
      Formula.new('vagrant'),
      Formula.new('virtualbox'),
      Formula.new('dropbox'),
      Formula.new('iterm2'),
      Formula.new('1password'),
      Formula.new('intellij-idea'),
      Formula.new('webstorm'),
      Formula.new('vlc'),
      Formula.new('shiftit'),
      Formula.new('ticktick'),
      Formula.new('night-owl'),
      Formula.new('slack'),
      Formula.new('gyazo'),
      Formula.new('rubymine'),
      Formula.new('aquaskk', 'upamune/homebrew-aereal_casks'),
  ]

end
