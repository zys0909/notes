[toc]



# Typora入门

## 简介

Typora是一款轻便简洁的Markdown编辑器，支持即时渲染技术，这也是与其他Markdown编辑器最显著的区别。即时渲染使得你写Markdown就想是写Word文档一样流畅自如，不像其他编辑器的有编辑栏和显示栏。

- Typora删除了预览窗口，以及所有其他不必要的干扰。取而代之的是实时预览。
- Markdown的语法因不同的解析器或编辑器而异，Typora使用的是[GitHub Flavored Markdown](https://help.github.com/articles/basic-writing-and-formatting-syntax/)。

## Markdown介绍

Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档。

Markdown 语言在 2004 由约翰·格鲁伯（英语：John Gruber）创建。

Markdown 编写的文档可以导出 HTML 、Word、图像、PDF、Epub 等多种格式的文档。

Markdown 编写的文档后缀为 `.md`, `.markdown`。

## 常用快捷键

- 加粗： `Ctrl + B`
- 标题： `Ctrl + H`
- 插入链接： `Ctrl + K`
- 插入代码： `Ctrl + Shift + C` -- 无法执行
- 行内代码： `Ctrl + Shift + K`
- 插入图片： `Ctrl + Shift + I`
- 无序列表：`Ctrl + Shift + L` -- 无法执行
- 撤销： `Ctrl + Z`
- 一级标题： `Ctrl + 1` -- 以此类推
- 去除缩进到句首: `ctrl + [ ` 或 `ctrl + Tab`

~~~go
Typora快捷键整合
```
Ctrl+1  一阶标题    Ctrl+B  字体加粗
Ctrl+2  二阶标题    Ctrl+I  字体倾斜
Ctrl+3  三阶标题    Ctrl+U  下划线
Ctrl+4  四阶标题    Ctrl+Home   返回Typora顶部
Ctrl+5  五阶标题    Ctrl+End    返回Typora底部
Ctrl+6  六阶标题    Ctrl+T  创建表格
Ctrl+L  选中某句话   Ctrl+K  创建超链接
Ctrl+D  选中某个单词  Ctrl+F  搜索
Ctrl+E  选中相同格式的文字   Ctrl+H  搜索并替换
Alt+Shift+5 删除线 Ctrl+Shift+I    插入图片
Ctrl+Shift+M    公式块 Ctrl+Shift+Q    引用

注：一些实体符号需要在实体符号之前加”\”才能够显示
```
~~~

## 块元素

### 换行符

在markdown中，段落由多个空格分隔。在Typora中，只需回车即可创建新段落。

`space+space+shift+enter`

### 标题级别

\# 一级标题 快捷键为 Ctrl + 1
\## 二级标题 快捷键为 Ctrl + 2
......
\###### 六级标题 快捷键为 Ctrl + 6

### 引用文字

\> + 空格 + 引用文字

### 无序列表

使用 * + - 都可以创建一个无序列表

- AAA
- BBB
- CCC

### 有序列表

使用 1. 2. 3. 创建有序列表

1. AAA
2. BBB
3. CCC

### 任务列表

\ -[ ] 不勾选
\ -[x] 勾选

### 代码块

在Typora中插入程序代码的方式有两种：使用反引号 `（~ 键）、使用缩进（Tab）。

- 插入行内代码，即插入一个单词或者一句代码的情况，使用 `code` 这样的形式插入。
- 插入多行代码输入3个反引号（`） + 回车，并在后面选择一个语言名称即可实现语法高亮。

```python
def helloworld():
    print("hello, world!")
```

### 数学表达式

当你需要在编辑器中插入数学公式时，可以使用两个美元符 $$ 包裹 TeX 或 LaTeX 格式的数学公式来实现。根据需要加载 Mathjax 对数学公式进行渲染。

按下 `$$`，然后按下回车键，即可进行数学公式的编辑。

```
$$
\mathbf{V}_1\times\mathbf{V}_2 = \mathbf{X}_3
$$
```

### 插入表格

输入 `| 表头1 | 表头2 |`并回车。即可创建一个包含2列表。快捷键 `Ctrl + T`弹出对话框。

|  id  | number |
| :--: | :----: |
|      |        |

- 不管是哪种方式，第一行为表头，第二行为分割表头和主体部分，第三行开始每一行为一个表格行
- 列与列之间用管道符号`|` 隔开
- 还可设置对齐方式(表头与内容之间)，如果不使用对齐标记，内容默认左对齐，表头居中对齐
  - 左对齐 ：|
  - 右对齐 |：
  - 中对齐 ：|：
- 为了美观，可以使用空格对齐不同行的单元格，并在左右两侧都使用 | 来标记单元格边界
- 为了使 Markdown 更清晰，| 和 - 两侧需要至少有一个空格（最左侧和最右侧的 | 外就不需要了）。

### 脚注

这个例子的脚注为[[1\]](https://www.cnblogs.com/hider/p/11614688.html#fn1)。

注意：该例子脚注标识是1，脚注标识可以为字母数字下划线，但是暂不支持中文。脚注内容可为任意字符，包括中文。

### 分割线

输入 `***` 或者 `---` 再按回车即可绘制一条水平线，如下：

------

### 目录（TOC）

输入 `[ toc ]` 然后回车，即可创建一个“目录”。TOC从文档中提取所有标题，其内容将自动更新。



