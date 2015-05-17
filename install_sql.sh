#!/bin/sh

if [ -f /tmp/mysql/$HOST.pid ]; then
echo "Killing former mysqld..."
MYSQL_PID=`cat /tmp/mysql/$HOST.pid`
kill $MYSQL_PID
wait $MYSQL_PID
echo "Killed!"
fi

echo "Removing MySQL db"
rm -rf /tmp/mysql/
#cp ~/su*je*t/.my.cnf ~/.my.cnf
cnf=`echo  ~/su*je*t/.my.cnf`
mkdir -p /tmp/mysql/var
echo "Creating MySQL db..."
mysql_install_db --datadir=/tmp/mysql
mysqld_safe --defaults-file=$cnf &
echo "Waiting for mysqld to be launched and running"
sleep 5
mysqladmin -u root password "" --socket=/tmp/mysql.sock
cat ~/su*je*t/base_exam.sql | mysql -u root --socket=/tmp/mysql.sock

echo "Mysql is running and database is filled, enjoy!"
