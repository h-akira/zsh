# zsh
## Setting
```
cd
git clone --recursive git@github.com:h-akira/zsh.git ~/.zsh
ln -sf ~/.zsh/.zshrc ~/.zshrc
ln -sf ~/.zsh/zsh-add/${マシンごとの設定ファイル} ~/.zsh/add.zshrc
exec zsh
```
（必要に応じて）ログインシェルを変更：
```
chsh -s $(which zsh)
```
- `add.zshrc`はマシンごとに異なる設定を追加でするためのもの
  - zsh-add（サブモジュール）からシンボリックリンクを貼る
  - zsh-addは非公開


## リンク
- [Zinit](https://github.com/zdharma-continuum/zinit)
- [Powerlebel10k](https://github.com/romkatv/powerlevel10k)
