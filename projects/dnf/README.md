# 地下城与勇士：鬼剑士 — WIPI → J2ME

原版为韩国 LGT WIPI Clet，名称 `던전앤파이터 귀검사`，NexonMobile，版本 01.00.00。`0002E1A1.jar` 是资源归档，程序主体是 ARM `binary.mod`，没有 Java class，不能直接换 JAD 运行。

目前为 0.1.0 场景与动作试玩：读取原数据恢复地图、角色组合、动画计时和画面混合；不是已通关的完整游戏。剧情、任务、敌人 AI、伤害结算、物品与原音频待接入。

```sh
# 仓库根目录
python3 tools/project.py verify-inputs dnf
python3 tools/project.py test dnf
```

运行 `j2me/dist/DnfGhostKnight.jar` 或配套 JAD，二者由 CLDC 预校验构建生成。方向键移动，5 挥剑/连段，1/3 查看动作，* 打开菜单，0 返回。中文适配菜单提供场景浏览、20 组原外观和四个试玩记录位置。移动控制和连段触发是开发适配层，不能视作原版完整操作状态机。

240×320、320×240 默认无触屏键；较高分辨率自动显示，设置中可覆盖。试玩记录使用独立 RMS，不兼容原 `DnfHero` / `DnfQuest`。

- [评估与边界](docs/01-assessment.md)
- [原格式与函数依据](docs/02-formats-and-runtime.md)
- [进度、验证与下一步](docs/03-development-status.md)
