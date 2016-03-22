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

##########################################git命令汇总#################
版本库相关

创建公钥
ssh-keygen -t rsa -C "testing@test.com"
cat ~/.ssh/id_rsa.pub
创建版本库
git init #初始化版本库
touch README
git add README #添加文件进缓存区
git commit -m 'first commit' #提交到本地库
git remote add origin git@testing.com:XXX/XXX.git #设置远程库
git push -u origin master #推送远程库
配置相关
git config --global user.name "testing.test" #配置用户名
git config --global user.email "testing.test" #配置邮箱
git config -l #显示所有配置
远程库相关命令
git clone git@testing.test.com:XXX/XXX.git #克隆远程库
git remote -v #查看远程库
git remote add [name] [url] #添加远程库
git remote rm [name] #删除远程库
git remote set-url --push [name] [newUrl] #修改远程库
git pull [remoteName] [localBranchName] #拉取远程库
git push [remoteName] [localBranchName] #推送远程库
git push origin test:master #提交本地test分支作为远程的master分支
git push origin test:test #提交本地test分支作为远程的test分支
分支相关
 
创建空的分支
git symbolic-ref HEAD refs/heads/[name]
rm .git/index
git clean -fdx
Icon
【温馨提醒】- 在执行命令之前记得先提交你当前分支的修改，否则会被强制删除！！
分支相关操作命令
git branch #查看本地分支 
git branch -r #查看远程分支
git branch [name] #创建本地分支
git checkout [name] #切换分支
git checkout -b [name] #创建新分支并立即切换到新分支
git branch -d [name] #删除分支
git merge [name] #合并分支，将名称为[name]的分支与当前分支合并
git push origin [name] #创建远程分支(本地分支push到远程)
git push origin :heads/[name] #删除远程分支
Icon
【温馨提醒】- 删除分支时，注意是小写的"-d"，使用"-D"则是强制删除，若存在未合并的代码，则会被丢弃！！
标签相关
 
tag操作相关命令
git tag #查看标签
git tag [name] #创建标签
git tag -d [name] #删除标签
git tag -r #查看远程标签
git push origin [name] #创建远程标签(本地标签push到远程)
git push origin :refs/tags/[name] #删除远程标签
git pull origin --tags #合并远程仓库的tag到本地
git push origin --tags #上传本地tag到远程仓库
git tag -a [name] -m 'Message' #创建带注释的tag
信息相关
 
显示信息类命令
git log #显示到 HEAD 所指向的 commit 为止的所有 commit 记录
git show [sha1] #显示 commit 修改的内容
 
git ls-files -u #显示冲突的文件
git ls-files -s #显示标记为冲突已解决的文件
git ls-files --stage #检查保存在stage的文件
 
git diff #对比工作区和stage文件的差异 
git diff --cached #对比stage和branch之间的差异
 
git status #查看仓库状态
本地库相关
 
本地库操作
git add [file-name] #添加文件至暂存区
git commit -m 'Message' #提交到本地仓库
git rm [file-name] #文件从本地库移除
git rm --cached [file-name] #从暂存区移除文件，但保留在工作区
 
git fetch [remote-name] #从远程库抓取数据
git pull [remote-name] #从远程获取最新版本并merge到本地
git push [remote-name] [branch-name] #推送数据至远程库
git merge [branch] #合并分支
撤销相关
 
暂存进度相关
git stash save 'message' #工作区未跟踪文件进行暂存
git stash list #查看暂存列表
git stash pop <stash> #应用暂存数据，并删除改暂存数据
git stash apply <stash> #应用暂存数据，不删除暂存数据
撤销操作相关
git reset HEAD <file> #取消暂存区的文件跟踪
git reset --mixed：#重置暂存区所有数据至指定 commit
git reset --soft：#重置远程库版本至指定 commit
git checkout -- <file> #撤销工作区的修改
git commit --amend #撤销上一次提交的 message
Icon
注意：以下2个命令请慎用！！
git reset --hard <commit> #重置工作区、暂存区所有数据至指定 commit
git checkout .  #撤销工作区所有修改
比较相关
 
工具相关
git difftool --tool=opendiff
git difftool --tool=emerge
查看改动
git diff #查看工作区改动内容
git diff --stage #查看已跟踪未提交的文件改动内容
git diff HEAD #查看最后一次提交之后工作目录中文件的变更
git diff [sha1] [sha2] #两次提交的差异比对
git diff ...[branch] #查看将合并分支的差异

#git过滤/忽略/ignore文件和文件夹 start
1. 往项目根目录添加一个文件".gitignore"。这文件和".git"文件夹同级
2. 设置过滤条件
	bin/ 过滤所有bin文件夹
	obj/ 过滤所有obj文件夹
	ValorNAV_deploy/ 过滤所有ValorNAV_deploy文件夹
	*.dll 过滤所有dll文件，这个最好不要使用dll，因为项目中像lib文件夹我们会放一些dll包。
3. 第三步：把".gitignore"文件提交并且push到服务器

Note:
其它的协作成员可以通过pull获取这个文件,其它人的过滤规则保持一致了。
1.如果新建一个空的Git仓库。直接拉取就可以了。
2.如果是一个已经使用了Git仓库，如果需要应用规则，则需要通过命令把相应要过滤的目录
的缓存删除。
git rm --cached <文件名> 删除文件的缓存
git rm --cached -r <目录名> 删除目录下的所有文件的缓存
通过上面的命令把缓存删除后，commit后再push到服务器。
其它的团队成员可以直接pull，过滤功能就能正常使用了。
#git过滤/忽略/ignore文件和文件夹 end