#!/bin/bash

# 使用方法: ./script.sh inputfile.txt

# 引数チェック
if [ $# -ne 1 ]; then
    echo "使用方法: $0 <入力ファイル>"
    echo "例: $0 input.txt"
    exit 1
fi

input_file="$1"

# ファイルの存在チェック
if [ ! -f "$input_file" ]; then
    echo "エラー: ファイル '$input_file' が見つかりません。"
    exit 1
fi

# ファイルを1行ずつ読み込んで処理
while IFS= read -r line || [ -n "$line" ]; do
    echo "//bibpaper[][]{"
    echo "$line"
    echo "//}"
    echo ""
done < "$input_file"
