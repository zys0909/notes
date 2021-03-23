- 安装应用	`adb install -r <apk全路径> `

- 卸载应用	`adb uninstall <应用appId>`

- 屏幕截图	`adb exec-out screencap -p > 命名.png`

- 清除应用数据与缓存	`adb shell pm clear <packagename>`

- 查看屏幕分辨率	`adb shell wm size`

- 查看屏幕密度	`adb shell wm density`

  - 将屏幕密度修改为 100dpi	`adb shell wm density 100`
  - 恢复原屏幕密度	`adb shell wm density reset`

- 查看正在运行的应用（包括服务）

  `adb shell dumpsys activity | grep -i run`

  查看前台Activity

  - `adb shell dumpsys activity activities`

  - `adb shell dumpsys activity top`

- 查看正在运行的Avtivity	

  `adb shell dumpsys activity activities | sed -En -e '/Running activities/,/Run #0/p'`

- 查看已安装的应用	`adb shell pm list packages`

- 启动一个已安装的应用	`adb shell am  start  <应用id/Launcher的Activity全路径>`

- 查看正在运行的 Services	`adb shell dumpsys activity services [<packagename>]`

- 查看应用详细信息	`adb shell dumpsys package <packagename>`

- 查看CPU信息	`adb shell cat /proc/cpuinfo`

- 查看CPU架构	`adb shell getprop ro.product.cpu.abi`

- 查看设备列表	`adb devices`

