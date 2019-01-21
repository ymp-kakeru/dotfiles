# dotfiles
もろもろ書いてく

# start up(スクリプトにしたい)
## language
"LANG=C xdg-user-dirs-gtk-update"

## 補完で大文字小文字の区別をなくす
`echo "set completion-ignore-case on" >> ~/.inputrc`

## Sublime Text 3
1. インストーラのダウンロード,インストール  
http://www.sublimetext.com/  
* ubuntuソフトウェアからもインストール可能

2. パッケージコントロールのインストール  
  2.1 import- 以下をコピー  
  2.2 https://packagecontrol.io/installation  
  2.3 [Cntl] + [']でコンソールを開き貼り付け，[Enter]  
  2.4 再起動．以降[cntl]+[shift]+[p]でコマンドパレットを呼び出す．  
  2.5 `Install Package` を選択．

3. 日本語化  
  3.1 ターミナルにて  
    ```
    sudo apt install ibus-mozc
    ibus-daemon -drx
    ibus-setup
    sudo apt install emacs-mozc
    ```
  3.2 Sublime コマンドパレットにて  
    `Add Repository`を選択し，https://github.com/yasuyuky/SublimeMozcInput を入力．  
    `Install Package` `sublimeMozcInput`をインストール

4. 追加パッケージ一覧  
ALL Autocomplete  
AutoFileName  
GitGutter 
ConvertToUTF8  
SublimeCodeIntel  
Cmake  

5. Preferences>Settings  
```
{
  "bold_folder_labels": true,
  "carset_style": "smooth",
  "color_scheme": "Packages/Color Scheme - Default/Monokai.sublime-color-scheme",
  "draw_indent_guides": true,
  "draw_white_space": "all",
  "font_face": "",
  "font_size": 10,
  "highlight_line": false,
  "ignored_packages":
  [
    "Vintage"
  ],
  "indent_to_bracket": true,
  "line_padding_bottom": 1,
  "line_padding_top": 1,
  "match_brackets_angle": true,
  "tab_size": 2,
  "theme": "Default.sublime-theme",
  "translate_tabs_to_spaces": true,
  "wrap_width": 80
}
```


## ROS(kinetic)
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

sudo apt-get install python-rosinstall
```
以上

## git
```
sudo apt install git-core
sudo apt install git 
git config -global user.name hoge
git config -global user.mail hoge@hoge
cd ~/.ssh
ssh-keygen -t rsa

```
長い

## cmake
```
https://cmake.org/download/  
tar xvf cmake-3.*.*.tar.gz  
./bootstrap && make && make install
```

## terminator  
`sudo apt install terminator`  
好みのプロファイルを設定してレイアウトとともに保存しておく．  
`echo "alias ympterm="terminator -l ymp&exit" "`

## trouble shoot
### 画面の解像度がおかしい！  
ディスプレイの倍率を確認しよう．2.24になってる可能性がある．

### フォントサイズが大きい  
"unity tweek tool"をインストールし，フォントサイズを変更


