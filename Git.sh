#!/bin/bash

echo "开始Git测试脚本..."

echo "使用git init创建一个新的 Git 本地仓库 git_test_repo"
git init git_test_repo
cd git_test_repo || exit

echo "创建一个新文件写入 Hello, Git! ,使用 git add 暂存然后使用 git commit 提交"
echo "Hello, Git!" > testfile.txt
cat testfile.txt
git add testfile.txt
git commit -m "Initial commit with testfile.txt"

echo "使用 git log --oneline 查看提交历史"
git log --oneline

echo "使用 git branch 创建一个新分支 feature-branch"
git branch feature-branch

echo "使用 git checkout 切换到新分支并修改文件后提交"
git checkout feature-branch
echo "This is a new feature." >> testfile.txt
git add testfile.txt
git commit -m "Added new feature to testfile.txt"

echo "查看分支提交历史"
git log --oneline

echo "切换回主分支并使用 git merge 合并更改"
git checkout main
git merge feature-branch

echo "查看合并后的提交历史"
git log --oneline

echo "测试结束"
