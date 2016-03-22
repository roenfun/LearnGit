#�����汾��
mkdir learngit
cd learngit
git init
ls -ah #�鿴.gitĿ¼

#�ύ�汾commit
git add file2.txt file3.txt file4.txt file5.txt
git commit -m "learning git now"

git status

#�鿴�ļ��ĸĶ�
git diff file1.txt
git diff HEAD -- readme.txt #�鿴�������Ͱ汾���������°汾������

#�汾���� �ع�
git log --pretty=oneline
git reset --hard HEAD^^ #���������汾
git reset --hard HEAD~100 #����100���汾
git reset --hard 3628164 #���˵�ĳ�汾

#git������ʷ��¼
git reflog

#���� �����޸�
git checkout -- readme.txt
git reset HEAD readme.txt #���˵����°汾

#ɾ���ļ�
git rm test.txt - > git commit -m "remove test.txt"
git checkout -- test.txt #����ɾ���ļ�

#�ڱ��زֿ����һ��Զ�ֿ̲⣬���ѱ��زֿ�master��֧���ٵ�Զ�̷�֧
git remote add origin ssh://xxx@192.168.1.32/~/workspace/code_celloct/gittest -> git push origin master
#���ع���Զ�ֿ̲�
git remote add origin git@github.com:michaelliao/learngit.git
git remote add origin https://github.com/roenfun/LearnGit.git

#�����������͵�Զ�ֿ̲�
#-u ��һ�����ͷ�֧ʱ����Զ�̷�֧
git push -u origin master #��ǰ��֧master���͵�Զ��
git push origin master #��ǰ��֧master���͵�Զ�̣��������û��������룿��

#������֧
#-b���������л������֧
git checkout -b dev
git branch #�鿴��֧
git checkout develop #�л���֧

#�ϲ���֧
#��ǰΪmaster����develop��֧�ϲ�����
git merge develop

#ɾ����֧
git branch -d develop

##########################################git�������#################
�汾�����

������Կ
ssh-keygen -t rsa -C "testing@test.com"
cat ~/.ssh/id_rsa.pub
�����汾��
git init #��ʼ���汾��
touch README
git add README #����ļ���������
git commit -m 'first commit' #�ύ�����ؿ�
git remote add origin git@testing.com:XXX/XXX.git #����Զ�̿�
git push -u origin master #����Զ�̿�
�������
git config --global user.name "testing.test" #�����û���
git config --global user.email "testing.test" #��������
git config -l #��ʾ��������
Զ�̿��������
git clone git@testing.test.com:XXX/XXX.git #��¡Զ�̿�
git remote -v #�鿴Զ�̿�
git remote add [name] [url] #���Զ�̿�
git remote rm [name] #ɾ��Զ�̿�
git remote set-url --push [name] [newUrl] #�޸�Զ�̿�
git pull [remoteName] [localBranchName] #��ȡԶ�̿�
git push [remoteName] [localBranchName] #����Զ�̿�
git push origin test:master #�ύ����test��֧��ΪԶ�̵�master��֧
git push origin test:test #�ύ����test��֧��ΪԶ�̵�test��֧
��֧���
 
�����յķ�֧
git symbolic-ref HEAD refs/heads/[name]
rm .git/index
git clean -fdx
Icon
����ܰ���ѡ�- ��ִ������֮ǰ�ǵ����ύ�㵱ǰ��֧���޸ģ�����ᱻǿ��ɾ������
��֧��ز�������
git branch #�鿴���ط�֧ 
git branch -r #�鿴Զ�̷�֧
git branch [name] #�������ط�֧
git checkout [name] #�л���֧
git checkout -b [name] #�����·�֧�������л����·�֧
git branch -d [name] #ɾ����֧
git merge [name] #�ϲ���֧��������Ϊ[name]�ķ�֧�뵱ǰ��֧�ϲ�
git push origin [name] #����Զ�̷�֧(���ط�֧push��Զ��)
git push origin :heads/[name] #ɾ��Զ�̷�֧
Icon
����ܰ���ѡ�- ɾ����֧ʱ��ע����Сд��"-d"��ʹ��"-D"����ǿ��ɾ����������δ�ϲ��Ĵ��룬��ᱻ��������
��ǩ���
 
tag�����������
git tag #�鿴��ǩ
git tag [name] #������ǩ
git tag -d [name] #ɾ����ǩ
git tag -r #�鿴Զ�̱�ǩ
git push origin [name] #����Զ�̱�ǩ(���ر�ǩpush��Զ��)
git push origin :refs/tags/[name] #ɾ��Զ�̱�ǩ
git pull origin --tags #�ϲ�Զ�ֿ̲��tag������
git push origin --tags #�ϴ�����tag��Զ�ֿ̲�
git tag -a [name] -m 'Message' #������ע�͵�tag
��Ϣ���
 
��ʾ��Ϣ������
git log #��ʾ�� HEAD ��ָ��� commit Ϊֹ������ commit ��¼
git show [sha1] #��ʾ commit �޸ĵ�����
 
git ls-files -u #��ʾ��ͻ���ļ�
git ls-files -s #��ʾ���Ϊ��ͻ�ѽ�����ļ�
git ls-files --stage #��鱣����stage���ļ�
 
git diff #�Աȹ�������stage�ļ��Ĳ��� 
git diff --cached #�Ա�stage��branch֮��Ĳ���
 
git status #�鿴�ֿ�״̬
���ؿ����
 
���ؿ����
git add [file-name] #����ļ����ݴ���
git commit -m 'Message' #�ύ�����زֿ�
git rm [file-name] #�ļ��ӱ��ؿ��Ƴ�
git rm --cached [file-name] #���ݴ����Ƴ��ļ����������ڹ�����
 
git fetch [remote-name] #��Զ�̿�ץȡ����
git pull [remote-name] #��Զ�̻�ȡ���°汾��merge������
git push [remote-name] [branch-name] #����������Զ�̿�
git merge [branch] #�ϲ���֧
�������
 
�ݴ�������
git stash save 'message' #������δ�����ļ������ݴ�
git stash list #�鿴�ݴ��б�
git stash pop <stash> #Ӧ���ݴ����ݣ���ɾ�����ݴ�����
git stash apply <stash> #Ӧ���ݴ����ݣ���ɾ���ݴ�����
�����������
git reset HEAD <file> #ȡ���ݴ������ļ�����
git reset --mixed��#�����ݴ�������������ָ�� commit
git reset --soft��#����Զ�̿�汾��ָ�� commit
git checkout -- <file> #�������������޸�
git commit --amend #������һ���ύ�� message
Icon
ע�⣺����2�����������ã���
git reset --hard <commit> #���ù��������ݴ�������������ָ�� commit
git checkout .  #���������������޸�
�Ƚ����
 
�������
git difftool --tool=opendiff
git difftool --tool=emerge
�鿴�Ķ�
git diff #�鿴�������Ķ�����
git diff --stage #�鿴�Ѹ���δ�ύ���ļ��Ķ�����
git diff HEAD #�鿴���һ���ύ֮����Ŀ¼���ļ��ı��
git diff [sha1] [sha2] #�����ύ�Ĳ���ȶ�
git diff ...[branch] #�鿴���ϲ���֧�Ĳ���

#git����/����/ignore�ļ����ļ��� start
1. ����Ŀ��Ŀ¼���һ���ļ�".gitignore"�����ļ���".git"�ļ���ͬ��
2. ���ù�������
	bin/ ��������bin�ļ���
	obj/ ��������obj�ļ���
	ValorNAV_deploy/ ��������ValorNAV_deploy�ļ���
	*.dll ��������dll�ļ��������ò�Ҫʹ��dll����Ϊ��Ŀ����lib�ļ������ǻ��һЩdll����
3. ����������".gitignore"�ļ��ύ����push��������

Note:
������Э����Ա����ͨ��pull��ȡ����ļ�,�����˵Ĺ��˹��򱣳�һ���ˡ�
1.����½�һ���յ�Git�ֿ⡣ֱ����ȡ�Ϳ����ˡ�
2.�����һ���Ѿ�ʹ����Git�ֿ⣬�����ҪӦ�ù�������Ҫͨ���������ӦҪ���˵�Ŀ¼
�Ļ���ɾ����
git rm --cached <�ļ���> ɾ���ļ��Ļ���
git rm --cached -r <Ŀ¼��> ɾ��Ŀ¼�µ������ļ��Ļ���
ͨ�����������ѻ���ɾ����commit����push����������
�������Ŷӳ�Ա����ֱ��pull�����˹��ܾ�������ʹ���ˡ�
#git����/����/ignore�ļ����ļ��� end