### Associated actions and their Git commands
1. List all branches: git branch
2. Delete a branch locally: git branch -d git-third-branch

### Difference between Local and Remote Branches
- Local branch: this branch represents versions of a project that exists only on the machine
- Remote branch: this branch has a copy of the project hosted somewhere external to the machine eg. GitHub

### Tracking Branch
- 


### Common Git commands
_1. git status:_    
shows whether files/folders need to be staged, committed or a branch needs to push or pull commits
_2. git log_:
Shows date/time, hash, author and commit messages for the current branch  
Example output from command.
```
commit f5de6bca6d72929833428157720e548cd0bd31b2 (HEAD -> master)
Merge: e386db1 99ba659
Author: Mary Jonah <jonahmary17@gmail.com>
Date:   Sat Jan 20 21:46:55 2024 +0000

    GIT-5 Resolve merge conflicts

commit e386db109605169dc3c264c960c21e8e934081fe
Author: Mary Jonah <jonahmary17@gmail.com>
Date:   Sat Jan 20 21:42:20 2024 +0000

    GIT-04 Editing same line of file in the main branch
```

_3. git diff_:  
This command returns the changes that have been made between commits or change between a working directory and the staging area.  
_4. git stash_:  
The command helps developers save changes that have not been committed yet. This ensures they do not interfere with current work one may be doing.
_5. git rebase:_  
This command kind of duplicates the commits on 1 branch to the existing branch.
Example below duplicates the commits from master to git-sec-branch
```
PS C:\Users\DELL\Documents\SCA-Devops> git checkout git-sec-branch
Switched to branch 'git-sec-branch'
PS C:\Users\DELL\Documents\SCA-Devops> git rebase master
Successfully rebased and updated refs/heads/git-sec-branch.
PS C:\Users\DELL\Documents\SCA-Devops>
PS C:\Users\DELL\Documents\SCA-Devops> git log --oneline
f5de6bc (HEAD -> git-sec-branch, master) GIT-5 Resolve merge conflicts
e386db1 GIT-04 Editing same line of file in the main branch
99ba659 GIT-03 Change of branch name in file on git-third-branch
891bed3 GIT-02 Incude initial text in file_one.txt
f9ea401 GIT-01 Create file in main branch
b03703c (origin/master, origin/HEAD) Updated README.md for Task-2
8920e23 Include Task2
e08c250 Updated README.md for Task-1
39ad473 Include Task1
2f72049 Initial commit
```
