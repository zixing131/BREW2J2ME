# 3D生化启示录 — J2ME原逻辑移植

版本 **0.3.5**。默认入口运行原地图、剧情、武器/敌人参数；本轮恢复原相机、精灵比例、界面动画布局、商店分类、雷达标记、地面材质混合、角色对白、室外天空与枪口遮罩。证据和未完成范围见 [视频对照记录](../docs/06-video-fidelity.md)；战斗、存档、触屏基础见 [0.3移植记录](../docs/05-combat-save-resolution-port.md)。

## 运行

产物：`dist/BiohazardDemo.jar` / `.jad`。

从仓库根目录运行，`KEMULATOR_HOME`指向本机模拟器安装目录：

```sh
bash "$KEMULATOR_HOME/kemulator.sh" \
  projects/biohazard/j2me/dist/BiohazardDemo.jar
```

支持240×320、320×240、360×640；也验证176×220和640×360布局。360×640按2倍像素显示。运行中旋转/改尺寸会重新布局。240×320、320×240及更低分辨率默认关闭触控；短边大于240或长边大于320的分辨率默认开启（例如360×640、640×360）。关闭时不显示触控层，也不响应触摸事件。设置菜单仍可手动切换，手动选择在本次运行内保留，不会被旋转覆盖；MIDP单指按住移动/开火，滑动切换按钮。

| 按键 | 行为 |
|---|---|
| 2/8 或 ↑/↓ | 前后移动、菜单上下 |
| 4/6 或 ←/→ | 转向 |
| 1/3 | 左右平移 |
| 5/FIRE | 射击/交互、菜单确认、对白翻页 |
| 7 | 切换武器 |
| 0 | 使用恢复剂；菜单/确认框中取消 |
| 9 | GPS，未解锁则打开商品确认 |
| # | 超级商店 |
| * / Back命令 | 系统菜单/返回 |

系统菜单：继续、保存、载入、武器/升级、物品商店、超级商店、药品、隐身、主菜单。选择背包武器会装备并进入该武器升级页。菜单页脚支持点击返回/上下/确认。

狙击枪第一次按下开镜，第二次按下射击；持续按住不会被每个游戏更新帧重复解释为新按键。原战斗状态机仍可在命中后继续攻击。原商店保留左侧确认、右侧返回，点击上/下箭头翻动列表。

“继续游戏”打开三个手动记录及一个自动记录，显示关卡、HP和时间。手动覆盖需确认；暂停/后台/退出尝试自动保存，死亡不覆盖自动存档。各槽保留两次有效快照，最近记录损坏时回退。旧演示记录不复用。原856字节save.dat已验证格式转换，但没有手机文件选择导入界面。

超级商店明确标为 **OFFLINE / NO SMS**：不发送短信，确认后应用原道具和限购逻辑。普通商店仍按原价格扣游戏金币。GPS/超级武器等购买记录随存档保存。

## 构建与测试

```sh
cd projects/biohazard/j2me
python3 build.py
python3 test.py
# 可选：执行原ARM重新生成差分期望，需要Python unicorn
python3 tools/reverse/arm_oracle.py
python3 tools/reverse/combat_oracle.py
python3 tools/reverse/material_oracle.py
```

也可从仓库根目录执行 `python3 tools/project.py test biohazard`，它会先构建。公共工具链配置见 [根说明](../../../README.md)。

使用本机JDK7、KEmulator UEI API、ProGuard4.7；可用 `J2ME_JDK_HOME`、`J2ME_API_HOME`、`PROGUARD_JAR` 覆盖。目标CLDC1.1/MIDP2.0。测试包含原ARM移动/动作/武器/数学/视线/价格对照、剧情战斗、存档恢复和损坏回退、生产Canvas多尺寸触控。`build/ui-previews/` 是桌面测试适配器调用生产代码生成的图，不是模拟器截图。

## 实现入口与边界

- `OriginalCanvas`：MIDP屏幕、输入、菜单、商店和存档接入。
- `OriginalSession`：玩家、关卡、VM、战斗生命周期。
- `OriginalData` / `OriginalPlayer` / `OriginalCombat` / `OriginalMath`：原表、背包/道具、战斗和AI。
- `SaveCodec` / `OriginalSaves`：带CRC的完整快照、RMS双记录写入。
- `OriginalRenderer` / `ScreenLayout`：原墙面/盒体/对象/敌人素材绘制与尺寸布局。
- `OriginalVM` / `OriginalMotion` / `ScriptAction`：原事件和运动逻辑。

还没有完成16关逐步人工通关、原版逐帧画面对照和真机性能验证。部分特效、对话表现、室外天空和音频仍待完整恢复；随机服务和光栅器是Java适配，不能声称全程序逐指令等价。旧GameCanvas/GameState/RayRenderer/SaveStore只保留作历史样例，默认MIDlet不使用。
