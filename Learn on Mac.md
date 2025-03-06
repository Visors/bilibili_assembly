# Learn on Mac

## 选择 DOSBox-X

最近开始重新学习汇编语言，翻阅王爽的书时，发现书中都依赖`DOSBox`和`MASM`。习惯性地，我准备在我的 BootCamp 下面尝试，但来回切换系统太麻烦。访问`DOSBox`的网站，它提供了 macOS 下的版本。不过 `DOSBox` 已经很久没维护了，我便在 GitHub 上查找是否有其它人维护的版本。

根据 GitHub 的检索结果，有两个 star 数目较高的项目：

+ [DOSBox-X](https://github.com/joncampbell123/dosbox-x)
+ [DOSBox Staging](https://github.com/dosbox-staging/dosbox-staging)

整体来说，**DOSBox-X 让我学习起来更方便**，不过它的包体也是三个版本里面最大的，出于有些朋友有精简安装的需要，这里也贴出原版的链接，它只有`4.2MB`大小，并且无需修改就可以在我安装了`15.3.1 (24D70)`版本 macOS 的 Intel 芯片的 MacBook Pro 2019 上运行：

+ [DOSBox](https://www.dosbox.com/download.php?main=1)

## 配置环境

### 下载 DOSBox-X

首先点击上面提供的 GitHub 项目链接，找到 Releases 界面，在最新的版本信息下，点开 Assets。 如果你是 Intel 的 MacBook，应该像我一样下载`dosbox-x-macosx-x86_64-20250201150724.zip`；如果你是 Apple Silicon 的 MacBook，应该下载`dosbox-x-macosx-arm64-20250201150724.zip`。后面的数字取决于具体的发行版本，可能有所不同。

### 解压
