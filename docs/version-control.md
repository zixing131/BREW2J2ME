# Git追踪与本地文件

本次只准备目录及规则，不初始化仓库、不创建提交、不设置远端、不推送。

## 提交的内容

- 根README、架构文档、工具链示例、项目模板和通用工具。
- 每个项目的源码、测试、构建和格式/逆向工具。
- 项目原始输入及来源说明、SHA256清单。biohazard原包共8份有效文件，含原版save.dat样本；它是固定回归输入，不是运行期私人存档。
- ARM差分fixture，以及可读C/ASM、函数索引、文本/脚本导出等审阅证据。

`.gitattributes`将源代码统一为LF，二进制按二进制处理；`originals/**`禁用换行转换，避免改变原包文本编码/字节并破坏SHA256。

## 忽略但保留在本地

| 路径/类型 | 原因 |
|---|---|
| `**/build/`、`**/dist/` | 提取数据、class、中间/预校验JAR、JAD、预览均可构建 |
| biohazard的 `j2me/resources/` | 全部来自原包，build在编译前重新生成 |
| `docs/reverse/game-analysis.elf` | 由ARM解压镜像和包装脚本生成 |
| IDA `.i64/.idb`及数据库缓存 | 本地工作数据库；可读导出追踪，数据库另行备份 |
| `.local/`、`runs/`、`*.log` | 临时会话和运行日志 |
| `toolchain.local.json`、`.env*` | 个人机器配置；示例文件例外 |
| 根 `toolchains/`、`emulators/` | 外部工具安装目录 |
| Python缓存、IDE配置、`.DS_Store` | 本机元数据 |

没有全局忽略PNG、BIN、DAT或JAR扩展名；未来原包或人工素材可能需要保留这些文件。不要将新增的手工素材放进被忽略的生成资源目录。

## 日后初始化时

```sh
git init
git status --short --untracked-files=all
git add .
git diff --cached --stat
# 检查无误后自行提交、设置远端并推送
```

若以后决定将某类原始输入改为外部获取，应同时提供获取/校验步骤并验证干净检出；只增加ignore会让构建缺输入。发布包可以作为发布附件保存，无需反复提交整个dist目录。

## 本次整理的核验

2026-10-26：使用临时Git索引检查忽略规则，待追踪文件约5.09 MiB；原始8文件SHA256一致。仅复制待追踪文件到临时检出目录，从仓库外执行 `tools/project.py test biohazard`，资源重建、CLDC预校验和全部回归测试通过，产出JAR各ZIP条目的内容与当前工作区一致。工作区没有创建`.git`。本地详细日志位于`.local/clean-checkout-test.log`，不提交。
