# 原始输入（只读）

本目录由原工作区 `3D生化启示录/` 原样迁入。原作者、资源整理者和运行说明保留在 `1073745158/biohazard.bin` 与 `使用说明.txt`，不重写其编码或内容。

- `1073745158.mif`：应用元数据。
- `1073745158/`：原始模块、压缩代码、资源容器、说明和save.dat样本。
- `manifest.json`：迁移前对8个有效输入文件记录的字节数及SHA256（不含系统.DS_Store）。

从仓库根目录运行 `python3 tools/project.py verify-inputs biohazard` 校验。构建只读这些文件，生成物写入相邻 `j2me/resources/` 和 `j2me/build/`；测试只读save.dat，用来验证856字节原格式。模拟器测试请使用运行目录，不让原包文件被写回。
