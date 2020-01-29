Last login: Wed Jan 29 14:34:53 on ttys003

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
nots-MacBook-Pro:~ ever$ cd desktop
nots-MacBook-Pro:desktop ever$ cd r-lesson
nots-MacBook-Pro:r-lesson ever$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   README.md.save

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Untitled.R
	data/
	gapminder 2.rmd
	gapminder analysis.rmd
	nano.save
	nano.save.1
	paper/new
	readme.md.save.1

no changes added to commit (use "git add" and/or "git commit -a")
nots-MacBook-Pro:r-lesson ever$ cd desktop
-bash: cd: desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ cd desktop
-bash: cd: desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ mkdir collaboration
nots-MacBook-Pro:r-lesson ever$ desktop
-bash: desktop: command not found
nots-MacBook-Pro:r-lesson ever$ cd desktop
-bash: cd: desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ pwd
/Users/ever/desktop/r-lesson
nots-MacBook-Pro:r-lesson ever$ cd desktop
-bash: cd: desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ cd /desktop
-bash: cd: /desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ cd/desktop
-bash: cd/desktop: No such file or directory
nots-MacBook-Pro:r-lesson ever$ cd ..
nots-MacBook-Pro:desktop ever$ mkdir collaboration
nots-MacBook-Pro:desktop ever$ cd collaboration
nots-MacBook-Pro:collaboration ever$ git clone https://github.com/LilianeK-7/r-lesson.git
Cloning into 'r-lesson'...
remote: Enumerating objects: 29, done.
remote: Counting objects: 100% (29/29), done.
remote: Compressing objects: 100% (18/18), done.
remote: Total 29 (delta 5), reused 29 (delta 5), pack-reused 0
Unpacking objects: 100% (29/29), done.
nots-MacBook-Pro:collaboration ever$ ls
r-lesson
nots-MacBook-Pro:collaboration ever$ cdd r-lesson
-bash: cdd: command not found
nots-MacBook-Pro:collaboration ever$ cd r-lesson
nots-MacBook-Pro:r-lesson ever$ ls
Create experiment.R	Intro-to-datatype.Rmd	lifeExp.png
Day2_morning.R		README.md		paper
Gapminder analysis.rmd	data
nots-MacBook-Pro:r-lesson ever$ nano README.md

  GNU nano 2.0.6              File: README.md                         Modified  

## R Lesson
##this is a changd, good luck
**Author:** Liliane Khoryati

**Dependencies:** dplyr, ggplot2

**Start date:** 2020.01.28


This repository contains analysis of life expectancy vs GDP.
Liliane Khoryati  is interested in population growth.









^G Get Help  ^O WriteOut  ^R Read File ^Y Prev Page ^K Cut Text  ^C Cur Pos
^X Exit      ^J Justify   ^W Where Is  ^V Next Page ^U UnCut Text^T To Spell
