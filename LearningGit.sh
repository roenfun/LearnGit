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
