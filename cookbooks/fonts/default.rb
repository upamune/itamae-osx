require_relative("../../common/common")

Common::FontPackage.each do |pkg|
  if pkg == 'ricty'
    execute 'tap ricty font' do
      command 'brew tap sanemat/font'
    end
  end
  package pkg
  if pkg == 'ricty'
    execute 'copy ricty fonts' do
      # TODO: バ-ジョンをうまく扱えるようにする
      command 'cp -f /usr/local/Cellar/ricty/3.2.4/share/fonts/Ricty*.ttf ~/Library/Fonts/'
    end
  end
end

execute 'refresh font cache' do
  command 'fc-cache -vf'
end
