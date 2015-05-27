# Tek - SQL exam

The file `answers.sql` contains 26 answers. Note that there are some duplicates. It's because the subject can change sometimes, and the sentences are not exactly the same, so the duplicates are here for the parser.

The script `cheatSQL.sh` will parse the subject and answer to as many questions as possible. Note that sometimes it will fail whereas the answer is in `answers.sql`, due to the fact that subject's sentences are not exacly identic.

The database used during the test is in `base_exam.sql` and the script used to install it is `install_sql.sh`.

Some subjects files are in `subjects` directory, they are real subjects used during real machine tests.

### Parser usage

```bash
./cheatSQL.sh path/to/subject
```

### Use it in exam partition

To use it during a test, you can simply do the following from your std partition:

```bash
su root
mkdir /exam
mount /dev/sda6 /exam
mkdir /exam/cheat
cp . /exam/cheat/exam-sql -R
umount /exam
rmdir /exam
```

```
     _     FUCK YOU EPITECH    _
    |_|                       |_|
    | |         /^^^\         | |
   _| |_      (| "o" |)      _| |_
 _| | | | _    (_---_)    _ | | | |_
| | | | |' |    _| |_    | `| | | | |
|          |   /     \   |          |
 \        /  / /(. .)\ \  \        /
   \    /  / /  | . |  \ \  \    /
     \  \/ /    ||Y||    \ \/  /
      \__/      || ||      \__/
                () ()
                || ||
               ooO Ooo
```
