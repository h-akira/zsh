# zsh
## Setting
```
cd
git clone git@github.com:h-akira/zsh.git
ln -sf .zsh/dot.zshrc ~/.zshrc
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
- `coreutils`を入れることでMacでもGNU版の`ls`を用いる事ができ，設定を流用できる．

## 色を変える
`.p10k.zsh`の以下の部分の数字を変えることで
カレントディレクトリが表示される部分の
色を変えることができる．
```
typeset -g POWERLEVEL9K_DIR_BACKGROUND=4
```
数字と色の対応は以下のコマンドで確認できる．
```
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
```

## その他
- Zinitnの更新: `zinit self-update`
- プラグインの更新: `zinit update`
- Powerlebel10kの再設定: `p10k configure`
  - 最後の`zshrc`の問は`n`
- dircolorsはデフォルトからシンボリックリンクのみ31（赤）から36（シアン）に変更

## リンク
- [Zinit](https://github.com/zdharma-continuum/zinit)
- [Powerlebel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-add](https://github.com/h-akira/zsh-add)
