# 《3D生化启示录》J2ME 重写评估

路径约定：本文命令以 `projects/biohazard/` 为工作目录。

日期：2026-10-26。本文件保留首次可行性评估与0.1.0技术切片的决策背景。**0.2.0已转为原ARM逻辑移植，当前进度以 [开发状态](03-development-status.md) 和 [原逻辑证据](04-original-logic-port.md) 为准。** 原关卡/开场脚本已解析接入，战斗与完整剧情尚未等价还原。

## 结论

可行，但属于逆向驱动的重新实现，不能把 BREW ARM 程序自动转成 MIDlet。完整还原难度高（约 8/10）；资源复用难度已显著下降，首个可玩技术切片难度中等（约 4/10）。这些分数是工程判断，不是测量结果。

按一名熟悉 Java ME、ARM 与软件渲染的开发者全职估算：资源/格式工具约 2–5 人日，技术切片约 3–7 人日，关卡与脚本恢复约 2–4 人周，战斗/背包/任务/存档约 2–4 人周，原版对照与设备优化约 2–4 人周。完整版本暂按 8–14 人周规划，须在完成一个原版关卡对照后重新估时；这不是当前交付承诺。

## 已确认事实

| 文件 | 大小 | 结论 |
|---|---:|---|
| shenghua.mod | 4516 B | ARM 装载/解压入口，0x119c 引用 bin.dat |
| bin.dat | 82789 B | u32 压缩长度 + gzip；解压为 171828 B ARM 游戏镜像 |
| mbxres.bin | 101971 B | 39 个按 ID 索引的 gzip 资源；含 16 个 520xx 数据块与 2 个 MIDI |
| map.hkm | 281324 B | 215 个图像记录，全部 gzip 可解压；并非直接的关卡地图文件 |
| save.dat | 856 B | 原版存档；字段未知，不改写、不假定可兼容 |
| biohazard.bin | 2267 B | UTF-8 资源包说明，明确原始分辨率 176×220 |

Melange APK 是 Android 外壳与 ARM BREW 兼容运行时；本地 so 导出 BREW 文件、位图、计时、按键及媒体接口。它可以作为后续原版行为参考，不能替代 J2ME 游戏逻辑实现。资源包说明指定 1.0.8.1，并记载该版本声音限制；本轮未实际运行原 BREW 游戏，不把说明当成当前设备实测结果。

## 首轮技术决策（0.1.0历史记录）

- 基线：CLDC 1.1 / MIDP 2.0，逻辑画面 176×220，整数定点运算；不要求可选 JSR-184。
- 渲染：先做 2.5D 软件光线投射、原版墙纹理与 billboard 精灵，隔离渲染器与游戏状态。此选型用于验证 J2ME 性能，不代表已证实原引擎全部采用同一算法。
- 资源：桌面构建期 gzip 解包，转换 PNG；设备运行时不依赖 gzip 库。原文件保持不变，生成文件记录来源/ID/偏移/hash。
- 首个开发里程碑：原版封面、可玩测试地图、移动/碰撞/转向/射击、敌人追踪/攻击、生命/弹药、胜负/暂停、独立 RMS 存档、资源查看。测试地图和数值明确属于重写验证内容。
- 原版 520xx 结构暂保留为原始解压数据；尺寸已确认，层语义/门/触发器/坐标/出生点仍是假设，不用猜测数据冒充还原关卡。
- 构建：本机 KEmulator UEI API + Java 7 旧字节码目标 + ProGuard `-microedition` 预校验。现有 WTK preverify 是 Linux ELF，macOS 不能直接运行，改用已经存在的 Java ProGuard。

## 首轮风险判断（0.2.0进度见上述新文档）

1. **玩法真实性**：需在 Melange 中记录标题、第一关、操作、射击、门、任务、死亡/存档的对照录像与状态；当前没有这份基线。
2. **关卡/脚本**：16 个尺寸各异的 520xx 块、110xx/51000/ID0 等内容尚需串联；先恢复第一关与一个任务闭环。
3. **图像特殊格式**：215 条中 5 条 flags=0x11 尚未确认；可先保留原始数据，其余 RGB565 图像可直接用于开发。
4. **性能**：Java ME 真机堆、PNG 解码内存、每帧逐像素绘制与 RMS 上限因机型不同；模拟器通过不能等同真机通过。
5. **完整系统**：武器升级、物品、剧情分支、特殊敌人、地图切换尚未恢复。当前不实现短信/支付通道。

原资源说明及版权署名保留，重写代码与原始资源来源分开记录。

## 参考

- 本地 `originals/1073745158/biohazard.bin` 与 `使用说明.txt`。
- [Oracle MIDP Graphics](https://docs.oracle.com/javame/config/cldc/ref-impl/midp2.0/jsr118/javax/microedition/lcdui/Graphics.html)：drawRGB 软件帧缓冲接口。
- [Oracle MIDP Image](https://docs.oracle.com/javame/config/cldc/ref-impl/midp2.0/jsr118/javax/microedition/lcdui/Image.html)：PNG/ARGB 加载。
- [ProGuard 手册](https://www.guardsquare.com/manual/configuration/usage)：Java ME 预校验。
