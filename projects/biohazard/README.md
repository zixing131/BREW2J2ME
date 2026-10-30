# 3D生化启示录

BREW原逻辑到J2ME的移植项目。当前版本0.3.10；恢复原相机、界面动画布局、商店分类、雷达、地面材质混合、角色对白、室外天空、枪口遮罩与旁白时序、命中/投射物/弹道/受伤特效和原版音乐；补充带距离衰减与墙体遮挡的敌人声音、枪声，已通过商城补给辅助的全主线连续验证，仍需无商城难度及真机人工验证。不是完整原光栅器逐帧等价实现。

- [当前状态](docs/03-development-status.md)
- [全主线通关验证与限制](docs/09-full-campaign-validation.md)
- [运行、按键与J2ME实现](j2me/README.md)
- [首次评估](docs/01-feasibility.md)
- [资源格式](docs/02-resource-formats.md)
- [战斗/存档/尺寸适配证据](docs/05-combat-save-resolution-port.md)
- [视频对照与0.3.6修正](docs/06-video-fidelity.md)
- [音乐、战斗特效与音效许可](docs/08-audio-and-combat-effects.md)
- [原始输入说明](originals/README.md)

从仓库根目录：

```sh
python3 tools/project.py test biohazard
```

预校验后的运行包在 `j2me/dist/BiohazardDemo.jar`，配套JAD同目录。游戏运行时存档在模拟器/手机自己的RMS中，不写 `originals/save.dat`。

项目内的旧阶段文档保留历史判断；它们的命令路径相对本目录。仓库级工具和新增软件流程见 [根说明](../../README.md)。
