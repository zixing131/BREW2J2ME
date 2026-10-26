# 新增一个 BREW 移植项目

从仓库根目录复制模板，替换slug和显示名：

```sh
cp -R templates/project projects/my-app
# 编辑 projects/my-app/project.json：id必须为my-app
python3 tools/project.py list
```

模板仅建立目录与说明，没有复制游戏业务代码或宣称存在可运行的构建。先保留 `targets: {}`，直到实际提供目标脚本。

1. 将原包放到 `originals/`，保持内部文件名和目录。记录来源/版本、BREW应用ID和可观测原行为，勿让模拟器回写输入样本。
2. 建立 `originals/manifest.json`，格式参考biohazard：`algorithm: "sha256"`，`files`数组每项为相对originals的`path`、字节数`size`、十六进制`sha256`。不把manifest自身列入。
3. 在 `docs/` 写难度评估、格式依据、原行为与适配边界。先定位入口、输入、计时、持久化，再实现目标平台。
4. 在 `j2me/` 实现自己的 `build.py`、`test.py`，通过 `tools/toolchain.py` 获取工具路径；提取器应使用 `Path(__file__).resolve()` 定位项目，不写某个人的绝对路径。
5. 将 `project.json` 的targets补为实际入口，命令如下：

```json
"targets": {
  "j2me": {
    "build": "j2me/build.py",
    "test": "j2me/test.py",
    "artifacts": ["j2me/dist/MyApp.jar", "j2me/dist/MyApp.jad"]
  }
}
```

完成后执行：

```sh
python3 tools/project.py verify-inputs my-app
python3 tools/project.py test my-app
```

`test`先执行build，再执行test；从无生成目录的检出也应成功。每个目标维护自己的资源忽略规则。不要全仓忽略`.bin`/`.dat`/`.jar`：它们有时是原始输入或测试证据，只忽略明确的产物目录。

新增目标平台时，在同一项目下加相应目录和targets条目；通用工具不强制所有项目使用Java ME，也不把游戏专属图像格式当作BREW统一格式。
