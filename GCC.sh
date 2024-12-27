#!/bin/bash

echo "开始 GCC 测试脚本..."

echo "创建 C 程序文件..."
cat <<EOF > test_program.c
#include <stdio.h>

int main() {
    printf("Hello World！\\n");
    return 0;
}
EOF

echo "使用 GCC 编译 C 程序..."
gcc test_program.c -o test_program

# 检查是否编译成功
if [ $? -eq 0 ]; then
    echo "编译成功！"
else
    echo "编译失败，请检查代码或 GCC 安装。"
    exit 1
fi

echo "运行编译后的程序..."
./test_program

echo "测试完成"