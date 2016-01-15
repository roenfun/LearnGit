#创建版本库
mkdir learngit
cd learngit
git init
ls -ah #查看.git目录

#提交版本commit
git add file2.txt file3.txt file4.txt file5.txt
git commit -m "learning git now"

git status

#查看文件的改动
git diff file1.txt
git diff HEAD -- readme.txt #查看工作区和版本库里面最新版本的区别

#版本回退 回滚
git log --pretty=oneline
git reset --hard HEAD^^ #回退两个版本
git reset --hard HEAD~100 #回退100个版本
git reset --hard 3628164 #回退到某版本

#git命令历史记录
git reflog

#撤销 放弃修改
git checkout -- readme.txt
git reset HEAD readme.txt #回退到最新版本

#删除文件
git rm test.txt - > git commit -m "remove test.txt"
git checkout -- test.txt #撤销删除文件

#在本地仓库添加一个远程仓库，并把本地仓库master分支跟踪到远程分支
git remote add origin ssh://xxx@192.168.1.32/~/workspace/code_celloct/gittest -> git push origin master
#本地关联远程仓库
git remote add origin git@github.com:michaelliao/learngit.git
git remote add origin https://github.com/roenfun/LearnGit.git

#本地内容推送到远程仓库
#-u 第一次推送分支时关联远程分支
git push -u origin master #当前分支master推送到远程
git push origin master #当前分支master推送到远程，需输入用户名和密码？？

#创建分支
#-b：创建并切换到其分支
git checkout -b dev
git branch #查看分支
git checkout develop #切换分支

#合并分支
#当前为master，把develop分支合并过来
git merge develop

#删除分支
git branch -d develop
