# 逆向导出

从用户提供的 binary.mod 在 IDA 9.2/Hex-Rays 中分析并导出。地址使用ELF section VA，映射和输入哈希见上层文档；`functions.json` 是当前识别的2,228函数索引。

`.c` 用于阅读，`.asm` 用于核验。大量子函数实际为 `BX R3/R4/R5/R6` trampoline，反编译器经常遗漏参数或把函数指针打印成整数；不得将这些结果直接作为可编译原源码。文件布局和内存布局也常有padding或符号扩展差异。

IDA数据库、解压临时文件留在j2me/build，Git不追踪。正常构建测试不依赖IDA。
