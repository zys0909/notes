## 背景

有两个仓库地址，想要把其中的一个地址项目信息作为另外一个地址的一个子分支进行合并，合并所有历史提交消息。

## 假设

两个不同地址的库
192.xx.101.a.git，分支branch1
192.xx.102.b.git，分支branch2

## 操作过程

- 场景：将branch2合并到branch1
- 克隆a到本地：`git clone a.git`
- 切换到branch1分支：`git checkout branch1`
- 设置b为a的远程地址，并且定义一个别名为base-102：`git remote add base-102 git@192.xx.102.b.git` 一般本地branch1默认了origin远程名称，所以起个别名
- 切换到b的branch2分支：`git checkout branch2`
- 拉最新的代码到本地的branch2分支：`git pull base-102 branch2`
- 切加branch1分支：`git checkout branch1`
- 将本地的branch2分支合并到branch1分支：`git merge branch2`
  此时，如果报错：fatal: refusing to merge unrelated histories … 则使用加上一个参数： `git merge develop --allow-unrelated-histories`
- 推送branch1到远程origin：`git push origin branch1`

操作完毕！