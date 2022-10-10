# zsh
## Setting
```
cd
git clone --recursive git@github.com:h-akira/zsh.git ~/.zsh
ln -sf ~/.zsh/.zshrc ~/.zshrc
ln -sf ~/.zsh/zsh-add/${マシンごとの設定ファイル} ~/.zsh/add.zshrc
exec zsh
```
（必要に応じて）ログインシェルを変更:
```
chsh -s $(which zsh)
```
Macの場合は以下が必要:
```
brew install coreutils
```
- `add.zshrc`はマシンごとに異なる設定を追加でするためのもの
  - zsh-add（サブモジュール）からシンボリックリンクを貼る
  - zsh-addは非公開
- `coreutils`を入れることでMacでもGNU版の`ls`を用いる事ができ，設定を流用できる．

## メモ
- Zinitnの更新: `zinit self-update`
- プラグインの更新: `zinit update`
- Powerlebel10kの再設定: `p10k configure`
  - 最後の`zshrc`の問は`n`
- dircolorsはデフォルトからシンボリックリンクのみ31（赤）から36（シアン）に変更

## リンク
- [Zinit](https://github.com/zdharma-continuum/zinit)
- [Powerlebel10k](https://github.com/romkatv/powerlevel10k)
