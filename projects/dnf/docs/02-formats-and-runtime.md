# 原格式与函数依据

所有地址指本项目 `binary.mod` 的 VA。`reverse/*.c` 是 Hex-Rays 辅助导出，不是原 C 源码；大量 `BX R3/R4/...` 桥接使反编译的函数名和参数数目不可靠，应检查对应 `.asm`。

## 资源容器

`u16 version, u32 decodedLength, u32 storedLength`，均 little endian。storedLength < decodedLength 时，后续为 LZMA-alone；否则直接复制。版本并非全部为 1。严格核对输入长度为 `10+storedLength`，输出为 decodedLength。

## DAT — 0x6e440

五字节头：paletteCount、colorsPerPalette、pixelFormat、flags、tileCount。之后为 paletteCount×colors×RGB 三字节调色板，然后 tileCount 张图片。每张图片头 `u8 width, u8 height, s8 anchorX, s8 anchorY`。格式 9/10/11/12 对应 1/2/4/8bpp，高位优先；本包全部为 12。

锚点应从绘制位置减去，不是位置偏移。`0x68dd4` 转 RGB565；`0x674a0` 明确以 RGB(32,144,32) 初始化透明色。按颜色判透明，不能固定丢弃 palette index 0。

## FRA — 0x6de68 / 0x6e944

`u8 families, u8 layers`；families×layers 的 u16 DAT ID 表；同尺寸 u8 palette 表；u8 compositeCount。每个 composite 为 u8 pieceCount，加 pieceCount 个七字节片段：`u8 bank,u8 tile,s16 x,s16 y,u8 transform`。原内存表有 padding，文件没有。

唯一已知异常 `30037.fra`：native 读取的 compositeCount=0，但后面还有 32 字节；提取器只对精确字节序列记录例外，未擅自修复。Java 严格解析仍拒绝该异常，当前主角/地图不引用它。

## ACT — 0x6d838

文件：`u16 fraId,u8 clipCount`。每 clip：u8 默认 next；u8 boxA 标志、若等于1则6字节；boxB 同理；u8 frameCount。

每 frame 的**文件顺序**：

1. u8 duration。
2. u8 bounds 标志；非零时 **四个 signed byte**。native 将它们符号扩展写到内存 `+12/+16/+20/+24` 的四个 int32，不能据内存宽度误读成文件内 int32。
3. u8 region 标志；非零时六个 little-endian int16，写到内存 `+40/+42/+44/+46/+56/+58`。
4. 七个 byte 写到内存 `+2..+8`。它们在内存中靠前，在文件中靠后。
5. u8 partCount；每 part 为 `u8 composite,s16 x,s16 y,5 bytes style`，文件10字节，内存12字节。

`tools/reverse/native_oracle.py` 执行原 loader，再比较字段；不是只按 Python 解析器构造一份“原版”对象。0.act 的 111 个动作字段已核对。

`0x6c8d0`：elapsed 按 u8 加一，只有 elapsed>duration 才换帧；动作末尾先取 override，255 则取默认 next；二者255则 active=0、finished=1。`0x6c9bc` 第四参数是 active，生成基线时必须传1。Java 对非法 next/空动作额外做安全终止，不能称所有损坏输入均与 native 等价。

## 绘图

`0x6b350 → 0x6b158 → 0x6adb8` 依次绘制 ACT parts、FRA pieces 和 DAT。FRA 指定的 family palette 覆盖层调色板。0..3 为翻转组合，4/5/6 使用 `0x69e04` 的旋转和锚点变换。地图绘制 `0x6aa7c` 的部分镜像锚点额外加15，不能用角色绘制公式代替。

混合模式 0 普通、1 screen、2 multiply、3 按32级权重混合、4 颜色表染色；565函数依据 `0x6850c/0x68634/0x6872c/0x687e0`。0/3已有原 ARM 像素基线，1/2/4与所有镜像旋转组合尚未做全量 native 像素差分。

## 地图 — 0x28838 / 0x28014 / 0x27e44 / 0x27a64 / 0x2ae60

FIE：六字节 groundId/rows/cols/yOffset/两个未命名字段；bankCount+每bank四字节 DAT ID/source/palette；四字节 farId/rows/cols/未命名字段+远景banks；五组可选装饰（signed id，负值为空；否则 x/y/repeat/gap/banks）；末尾 rows×cols 字节碰撞覆盖表。169份均精确消费到末尾。

BAC、FOR、FOB 前两字节是 **rows,cols**，随后分别每格5/3/3字节。前三字段是 bank、tile、transform，不能拼成一个24位资源ID。32 BAC、19 FOR、38 FOB 全部长度符合。

原图块16×16；远景横向 cameraX/2；地面 yOffset×16；装饰 y=`16*(y+yOffset+1-objectRows)`。BAC/FOR按源图格循环铺到FIE目标尺寸。碰撞覆盖表写到native格子内存+4。当前试玩的出生位置扫描和逐像素移动是适配代码，尚未替代原关卡/角色调度。

## 后续资源

`.ani` 是剧情/演出流，不能直接当精灵动画；`.ds` 也不是 BAC 格子格式。`.snd` 解压后为 `u8 trackCount`，逐轨 `u8 flag,u32 length,MMMD payload`；0.snd含16轨，不能统一跳过6字节后当单轨，更不能把SMAF当MIDI。剧情、字库和音频详见[专项记录](04-story-and-audio.md)。`0x88f4/0x9288` 揭示原四组 DnfHero、DnfQuest 等保存文件，当前使用独立试玩记录与四槽剧情/战斗/Campaign RMS，尚不读写原版存档格式。

## 物品、后续任务与跨演出状态

0.5将原0/1/2.etc、10/12.bd、questItem、SC、mapAni接入物品/交易与主线运行时；字段表、函数依据及DNS4/Campaign v2边界见[07](07-equipment-and-mainline.md)。格式解析不代表所有高级效果已实现。
