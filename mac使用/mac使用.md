1，设置启动台行数（横向显示几个图标）  
	`defaults write com.apple.dock springboard-columns -int 10`
   重信打开启动台 `killall Dock`

2，显示隐藏文件 `defaults write com.apple.finder AppleShowAllFiles YES`

3，新建文件 `touch +文件名`

4，设置环境变量

   ``` c++
        open .bash_profile
        export ANDROID_SDK_ROOT=/Users/zoey/Library/Android/sdk
        PATH=$PATH:$ANDROID_SDK_ROOT:.
        source .bash_profile
   ```

- 注意`=`前后不要加空格，不支持`-`中杠

5，显示隐藏文件 `defaults write com.apple.finder AppleShowAllFiles YES`

6，

- jdk安装位置 `/usr/libexec/java_home -V`

- 查看jdk可用版本 `ls /Library/Java/JavaVirtualMachines/`

- 卸载jdk
    ` sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin`
    ` sudo rm -fr /Library/PreferencesPanes/JavaControlPanel.prefPane`
    ` sudo rm -fr ~/Library/Application\ Support/Java`
    `sudo rm -rf /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk`

