# 评估

这是原生 ARM/WIPI 游戏移植，不是 Java 反编译后重打包，整体难度高。图像与动画较容易逐字段验证；剧情解释器、角色/敌人状态机、任务和持久化是主要工作量。不能凭资源数量推算完成百分比。

## 确认的输入

- 归档 SHA256：`4d76f21a698055e0f6e702910e1915d5e1fb9497549ce3e34c3e03c26841881d`。
- `binary.mod`：1,021,868 字节 ARM ELF32；没有常规 program headers，包含 Raptor/WIPI 信息。IDA 初次打开曾得到空数据库，需要明确映射 sections。
- text：VA `0x1000` / file `0x34` / size `0x9c350`；data：VA `0x1400000` / file `0xba244` / size `0x35fc`；bss：VA `0x1500000` / size `0x3ada4`。
- 入口 `0x8cce0`，WIPI 初始化 `0x1000`，Clet start/pause/resume/destroy/paint/event callbacks 位于 `0x11d8/0x1120/0x1188/0x1068/0x106c/0x10a0`。原初始化请求 240×320。
- 2,902 份资源全部通过容器长度与解压长度校验；不代表所有资源语义均已恢复。

## 实现边界

独立 `dnf` 项目，与 `biohazard` 不共享业务引擎。只复用根目录项目入口和 JDK/CLDC/ProGuard 工具链配置。资源构建使用 Python 标准库，不要求 IDA、Pillow 或 Unicorn；Java 测试读取已经提交的 ARM 基线。

精灵、动作、地图保留原数据解释流程；WIPI 绘图和文件系统换为 MIDP Canvas/RMS。现阶段的场景选择、自由移动、连段触发及中文菜单属于移植适配层，原剧情关卡解锁、战斗系统不能由这些功能代替。

WIPI ABI 识别参考了 [dlunch/wipi](https://github.com/dlunch/wipi) 的 LGT Clet/API 定义（MIT）；当前运行时没有复制其代码或依赖它。原版视听核验仍需 WIPI 运行参考，不把静态资源预览当原版通关验证。
