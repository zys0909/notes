**Homebrew基本用法：**

假设需要安装的软件是 wget

|          操作          |        命令         |
| :--------------------: | :-----------------: |
|      更新HomeBrew      |    `brew update`    |
| 更新所有安装过的软件包 |   `brew upgrade`    |
|    更新指定的软件包    | `brew upgrade wget` |
|       查找软件包       | `brew search wget`  |
|       安装软件包       | `brew install wget` |
|       卸载软件包       | `brew remove wget`  |
|   列出已安装的软件包   |     `brew list`     |
|     查看软件包信息     |  `brew info wget`   |
|  列出软件包的依赖信息  |  `brew deps wget`   |
|  列出可以更新的软件包  |   `brew outdated`   |



操作命令更新 Homebrewbrew update更新所有安装过的软件包brew upgrade更新指定的软件包brew upgrade wget查找软件包brew search wget安装软件包brew install wget卸载软件包brew remove wget列出已安装的软件包brew list查看软件包信息brew info wget列出软件包的依赖关系brew deps wget列出可以更新的软件包brew outdated

卸载方法：

```text
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/unins"
```