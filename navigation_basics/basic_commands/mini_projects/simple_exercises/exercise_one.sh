
sobhan@DESKTOP-DH3LD4L:~$ pwd
/home/sobhan
sobhan@DESKTOP-DH3LD4L:~$ mkdir my_project
sobhan@DESKTOP-DH3LD4L:~$ cd my_project/
sobhan@DESKTOP-DH3LD4L:~/my_project$ mkdir docs src backup
sobhan@DESKTOP-DH3LD4L:~/my_project$ ls
backup  docs  src
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd docs
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ touch readme.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ echo "This is my project documentation" > readme.txt 
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ cd ..
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd src
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ touch main.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ echo "This is the main source file" > main.txt 
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ cat main.txt
This is the main source file
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ cp main.txt ../backup/
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ touch temp.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ mv temp.txt ../docs/
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ ls ../docs/
readme.txt  temp.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ cd .. 
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd .. 
sobhan@DESKTOP-DH3LD4L:~$ cd my_project/
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd src/
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ ls
main.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/src$ cd ..
sobhan@DESKTOP-DH3LD4L:~/my_project$ ls -l
total 12
drwxrwxr-x 2 sobhan sobhan 4096 Jul 23 17:46 backup
drwxrwxr-x 2 sobhan sobhan 4096 Jul 23 17:47 docs
drwxrwxr-x 2 sobhan sobhan 4096 Jul 23 17:47 src
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd docs/
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ ls -l
total 4
-rw-rw-r-- 1 sobhan sobhan 33 Jul 23 17:33 readme.txt
-rw-rw-r-- 1 sobhan sobhan  0 Jul 23 17:47 temp.txt
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ cat readme.txt 
This is my project documentation
sobhan@DESKTOP-DH3LD4L:~/my_project/docs$ cd ..
sobhan@DESKTOP-DH3LD4L:~/my_project$ cd ..
sobhan@DESKTOP-DH3LD4L:~$ tree my_project/
my_project/
├── backup
│   └── main.txt
├── docs
│   ├── readme.txt
│   └── temp.txt
└── src
    └── main.txt

4 directories, 4 files
sobhan@DESKTOP-DH3LD4L:~$ rm -f my_project/docs/temp.txt 
sobhan@DESKTOP-DH3LD4L:~$ rm my_project/backup/main.txt 
sobhan@DESKTOP-DH3LD4L:~$ rmdir my_project/backup/
sobhan@DESKTOP-DH3LD4L:~$ ls -l my_
my_first_backup.tar.gz  my_project/             
sobhan@DESKTOP-DH3LD4L:~$ ls -l my_
my_first_backup.tar.gz  my_project/             
sobhan@DESKTOP-DH3LD4L:~$ ls -l my_project/
total 8
drwxrwxr-x 2 sobhan sobhan 4096 Jul 23 17:53 docs
drwxrwxr-x 2 sobhan sobhan 4096 Jul 23 17:47 src
sobhan@DESKTOP-DH3LD4L:~$ tree my_project/
my_project/
├── docs
│   └── readme.txt
└── src
    └── main.txt

3 directories, 2 files
sobhan@DESKTOP-DH3LD4L:~$ ls -R
.:
backup_test  go_to_work.sh  my_first_backup.tar.gz  my_project  script.sh  workspace

./backup_test:
workspace

./backup_test/workspace:
archive      archive_old  file.vi            my_archive.tar             note.txt   server.conf
archive.zip  file.nano    linux_wiki.kernel  my_archive_compressed.tar  script.sh

./backup_test/workspace/archive:
backup.txt  main_note.txt

./backup_test/workspace/archive_old:
backup.txt  main_note.txt

./my_project:
docs  src

./my_project/docs:
readme.txt

./my_project/src:
main.txt

./workspace:
archive      file.nano  hard_link.txt      my_archive.tar             script.sh    soft_link.txt
archive.zip  file.vi    linux_wiki.kernel  my_archive_compressed.tar  server.conf
archive_old  hard.txt   main_file.txt      note.txt                   soft.txt

./workspace/archive:
backup.txt  main_note.txt

./workspace/archive_old:
backup.txt  main_note.txt
sobhan@DESKTOP-DH3LD4L:~$ ls -R my_project/
my_project/:
docs  src

my_project/docs:
readme.txt

my_project/src:
main.txt