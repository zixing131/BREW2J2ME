# 0.2.0：剧情与声音

本阶段接通原数据中的演出内容，不把选段、日记浏览当作主线解锁。原文保留作核验基线；ANI对白与日记的669条去重文本已汉化，中文由设备原生字体绘制。

## ANI

`0x70544/0x704e8/0x704ac/0x70470` 确定解压payload布局：12字节头，36字节对象表，事件区，EUC-KR文本区，21字节结束信息。

头：`u8 type,u8 count,u16 duration,u16 eventBytes,u16 textBytes,u16 eventOffset,u16 textOffset`。

对象：kind+0、初始动作+1、family+2、s16 x/y+4/+6、音乐号+10、头像FRA+14、对白布局+16、头像帧+18、说话人/正文长度+20/+22、资源ID+24、两段文本偏移+26/+28、首事件偏移+30。+32仅在native检查是否非零，**不能当作一定可达的块数**；若干资源的编辑器计数与可达链不一致。

事件块：`u16 start,u16 slotCount,u16 nextTime,u16 nextOffset`，后接每槽52字节；终止时间60000。`0x7035c/0x703b4`直接复制槽并按时间切换。所有槽都携带位置+4/+8与朝向+13（`0x6ead8`），不能只把“移动命令”作为位置来源。

已处理角色/地图/文本/音乐/镜头/FRA/DAT对象，动作切换、显示隐藏、固定帧、局部帧循环、速度移动、透明度，以及基础画面遮罩。对白指令15与+24暂停标志来自`0x6ee78/0x6f48c`；状态4→3等待、7→1继续来自`0x711c8`。长对白增加分页，属于适配层。

结束信息首字节为dispatch类型，+13是下一ANI（`0x70560`）。`0x708bc` case2会把下一ID=1替换成999。新游戏入口已由`0x1700`空槽分支确认：`0x18d4 MOVS R0,#100`、`0x18d6 LDR R3=0x3592d`、`0x18d8 BL sub_1b40`，经`0x3592c`进入`0x70560`。实际链100→101→102→103→999→201→3→4。ANI4是case1游戏状态出口，next=5不意味着自动连播；当前在此保存开场进度，后续关卡仍待恢复。

注意：Thumb函数指针常仅存在于literal pool；`XrefsTo(function|1)`可能漏报。需搜索原binary.mod的小端函数指针值，再对literal地址取xref。ELF text VA = file offset + 0xfcc。不能把未找到直接调用者解释成入口不存在。

角色命令696个状态由原ARM `0x703d8/0x7035c/0x703b4/0x6ead8/0x6eb20`执行生成，比较位置、动作选择、朝向、透明、隐藏及固定帧状态。未宣称所有剧情像素/动画相位与原程序逐帧一致。

## 原版字库与日记

`font`容器version=3表示三套字库。`0x8b988`读取7字节头与offset表；`0x8b31c`只复制payload、归一化offset，并非压缩算法。type0为95项ASCII，type1为8×19初声、4×21中声、4×28终声，type2为204项符号。每两个payload字节表示一个矩形：x/y各4bit、w/h各4bit（`0x72368`）。

`0x72484`用Unicode韩文音节拆分初/中/终声，并用程序内变体表选取部件。构建时从原font与binary.mod生成只含实际文本字符的位图，运行时不依赖韩文字体。字符advance比字面宽度多1px；原ASCII/符号末项的sentinel覆盖也按native保留。

759个原字形经Unicorn执行原字体加载、部件选择和矩形解码核对；只把最终填矩形替换成host显示。原字库缺少的‘、’、…用原单引号/句点组合，明确属于可读性适配。

`0x209f8`日记：u16 count，逐条882字节，标题22、正文850，其余10字节为元数据。当前30条中文全档可读，尚未恢复解锁条件。SC对话结构已定位`0x20b9c`，但NPC/任务条件尚未接入；DS是场景实体而不是对白文本。

## 中文适配

`localization/zh-CN.json`按原字符串存储中文值，保留源韩文；构建严格拒绝缺失和过期key。63份剧情与30篇日记输出独立中文资源，原文资源仍用于ARM基线与回归。`NativeText`在场景缩放后使用MIDP `Font`和`Graphics`绘制，按物理字宽换行、分页，保留日记强调色。分页游标保存原始中文字符串偏移，计量与绘制使用同一函数，输入早于首帧绘制也不会跳过文本。

制作名单中的姓名使用拉丁转写，不能视为官方汉字姓名。原ANI2/201里的教程编辑备注也忠实翻译，不当作已经接入的玩法。尚未移植的NPC/任务与图片内韩文不在本轮覆盖范围。

## 声音

原包31份SND包含46轨：22个ATR采样、24个MTR。后者5个包含嵌入采样，故输出27 WAV、19首主MIDI，以及5个保留极低音量辅助音符的配套MIDI。

SMAF Mobile Standard事件duration/gate单位为4ms，转换SMF type0，PPQ250、tempo1000000µs。保留音符时长、速度、音量、声像、弯音、程序等普通事件；节奏bank125映射GM通道10。专用bank归零、Yamaha SysEx音色定义不发送给GM播放器，**音色并非原MA3合成器的精确复刻**。嵌入采样保留时间偏移，辅助MIDI使用独立有限通道播放，设备不支持多路MMAPI时会降级。

ADPCM使用SMAF MA系列低半字节优先、230/307/409/512/614步长系数。最初调查的OPNA ADPCM-B高半字节排列不适用；22个原ATR全部PCM已与独立FFmpeg解码SHA256一致。正常构建只用Python标准库，不依赖FFmpeg或Rust。

`0x6c6dc/0x6c538/0x6c684`证明SND flag为循环默认值，调用者可以覆盖。`0x70184`剧情音乐调用显式覆盖为循环播放（第五参数1，反编译C遗漏）；当前播放器按此循环，原版渐入/渐出和全局音频仲裁尚未完全迁移。

挥剑音效链：`0x6e0d8`在新帧elapsed=0取ACT raw字段[5]（native+7），`0x2d77c`通过reactionData的声音二元组选择命中/动作音，`0x30b18`提交给0.snd（初始化`0x39bf4`）。三段挥剑20/21/22的第二帧均为反应17，映射动作轨15；已接回试玩控制，不用按键次数代替帧事件。命中音映射保留接口，伤害碰撞尚未实现，因此不伪造命中声。

MMAPI最多3个播放器，支持音量、失焦暂停、恢复、释放和解码器失败降级。桌面测试替身验证生命周期，不等同真机音频试听。

格式参考：[Yamaha SMAF 3.05规范](https://img.atwiki.jp/mmfuta/attach/19/78/SMAF3.05.pdf)、[dlunch/smaf解析器](https://github.com/dlunch/smaf)、[FFmpeg ADPCM实现](https://github.com/FFmpeg/FFmpeg/blob/master/libavcodec/adpcm.c)、[vavi Yamaha输入流](https://github.com/umjammer/vavi-sound/blob/master/src/main/java/vavi/sound/adpcm/yamaha/YamahaInputStream.java)。实现为本项目的限定格式转换器，未将外部库打入JAR。

## 验证与重建

`python3 tools/project.py test dnf`执行资源校验、转换、编译、CLDC预校验与测试。原生基线只显式重建：

```sh
python3 projects/dnf/j2me/tools/reverse/story_oracle.py
python3 projects/dnf/j2me/tools/reverse/audio_oracle.py
```

前者需要Unicorn，后者需要FFmpeg；普通测试读取已提交基线。所有63段跑至duration，测试对白冻结/确认/分页，4种分辨率检查剧情RMS续看、触控、播放器释放和不支持音频时的退路。
