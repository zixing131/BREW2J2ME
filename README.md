# BREW / WIPI 移植工作区

用于分析 BREW、WIPI 软件、保存原始行为证据，并逐项目实现其他平台版本。Melange 等模拟器用于参考原版运行行为；仓库本身不是 BREW 模拟器。

## 目录

```text
BREW/
├── projects/                  # 每个软件一个独立项目
│   └── biohazard/              # 3D生化启示录
│       ├── project.json       # 项目信息、构建/测试入口
│       ├── originals/         # 原始输入，只读；含 SHA256 清单
│       ├── docs/              # 评估、格式、进度与逆向证据
│       └── j2me/              # Java ME 实现、测试、专用工具
├── tools/                     # 通用项目入口、工具链配置
├── templates/project/         # 新项目结构模板
├── docs/                      # 仓库架构、接入流程与Git规则
├── toolchain.example.json     # 本地工具链配置示例
└── .local/                    # 本地会话/临时文件，不提交
```

项目代码和资料归属同一个项目目录。未来新增软件时增加 `projects/<slug>/`；不同目标平台可并列放在该项目下。具体资源解码、游戏逻辑和逆向脚本留在各自项目，当前没有把《3D生化启示录》的引擎当成通用 BREW 引擎。

## 当前项目

| 项目 | 目标 | 状态 |
|---|---|---|
| [3D生化启示录](projects/biohazard/README.md) (`biohazard`) | J2ME CLDC1.1/MIDP2.0 | 0.3.1，核心系统已接入，完整还原进行中 |
| [DNF 鬼剑士（韩国 WIPI）](projects/dnf/README.md) (`dnf`) | J2ME CLDC1.1/MIDP2.0 | 0.1.0，原场景与动作试玩；剧情与战斗移植进行中 |

## 快速开始

Python 3 用于构建编排和资源提取。当前 J2ME 项目使用 JDK7、KEmulator UEI 的 `cldc11.jar` / `midp21.jar`、ProGuard4.7进行 CLDC 预校验；工具链和模拟器不打包进仓库。

```sh
# 全部命令从仓库根目录运行
python3 tools/project.py list
python3 tools/project.py doctor
python3 tools/project.py verify-inputs biohazard
python3 tools/project.py build biohazard
python3 tools/project.py test biohazard
```

`test` 会先构建，因此全新检出不依赖旧的 `resources/`、`build/` 或 `dist/`。普通测试直接使用已保留的 ARM 期望数据，不要求安装 IDA/Unicorn。重新生成逆向结果或 ARM fixture 时才需要相应工具。

工具链配置优先级：专用环境变量 → 根目录 `toolchain.local.json` → 本机常见路径。复制 `toolchain.example.json` 并填写真实路径：

```sh
cp toolchain.example.json toolchain.local.json
# 编辑 J2ME_JDK_HOME、J2ME_API_HOME、PROGUARD_JAR
python3 tools/project.py doctor
```

相对配置路径以仓库根目录为基准，支持 `~`。本地配置受Git忽略。JDK21等现代编译器不支持本项目的旧字节码目标，请显式配置JDK7。

当前预校验产物：

- `projects/biohazard/j2me/dist/BiohazardDemo.jar`
- `projects/biohazard/j2me/dist/BiohazardDemo.jad`

`build/unverified.jar` 只是中间产物；运行或发布使用 `dist/` 下经 ProGuard `-microedition` 处理的包。

## 新增软件与提交范围

- [架构与依赖边界](docs/architecture.md)
- [新增移植项目](docs/adding-a-project.md)
- [Git追踪及本地文件规则](docs/version-control.md)

源码、文档、可读逆向导出、原始输入和测试 fixture 会被Git追踪；可重建资源、构建/发布包、本地配置、缓存、日志和IDA数据库被忽略。原始文件的来源说明保留在项目内，不统一忽略 `.bin`、`.dat` 等扩展名。
