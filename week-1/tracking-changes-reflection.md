##How does tracking and adding changes make developers' lives easier?
It allows for all developers to add changes within branches without affecting the master file. Tracking changes lets developers see what changes have been made and who they were made by.
##What is a commit?
A commit is a bundle of changes made to a file and when to commit means the changes made have been stored locally.
##What are the best practices for commit messages?
The best practices are to write in the imperative form when writing commit messages.
##What does the HEAD^ argument mean?
This command determines which branch you are currently on.
##What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are add, commit, and push. When you add in git, you have modified the branch file locally. When you commit a file, git changes the master file to match the changes you have made. Finally, to move to the last stage, you push the file remotely to an open source environment, such as GitHub. 
##Write a handy cheatsheet of the commands you need to commit your changes?
###1. git commit -m "Type message including changes in imperative form here"
to create a commit message
###2. git log
to show what you have changed in the repo before you stage and commit
###3. git commit
to commit your changes
###4. git push
to share changes remotely
<<<<<<< HEAD
What is a pull request and how do you create and merge one?
A pull request is used to merge changes into your master branch. Once you have pushed your changes, you compare and pull request on remote branch, say what you have changed and create pull request to make a page that can be worked on by several developers without affecting your work. Next, you can merge your changes to the master and delete your working branch. 
Why are pull requests preferred when working with teams?
=======
##What is a pull request and how do you create and merge one?
A pull request is used to merge changes into your master branch. Once you have pushed your changes, you compare and pull request on remote branch, say what you have changed and create pull request to make a page that can be worked on by several developers without affecting your work. Next, you can merge your changes to the master and delete your working branch. 
##Why are pull requests preferred when working with teams?
>>>>>>> 9a7d2bceaaa038760e5f90dace3e6e837dc8637c
Pull requests allow developers to view the changes different developers have made before permanently changing the master file. 