#!/bin/sh
#Runs migration i.e execute MySQL query on all the db's matching a particular regex format, eg starting from db will have regex as ^db
dbUsername=root
dbPassword=password
sdate=`date +%s`
for dbName in `mysql -u $dbUsername $dbPassword -e"show databases;" | grep -e "^db"`;
  do
      echo "Running migration on database : $dbName";
      
      #select
      mysql -u $dbUsername $dbPassword -e "select * from $dbName.TABLE_NAME;";

      #insert
      mysql -u $dbUsername $dbPassword -e "insert into $dbName.TABLE_NAME values(123,\"STRING\",NULL,0);";

      #alter table
      mysql -u $dbUsername $dbPassword -e "ALTER TABLE $dbName.TABLE_NAME COLUMN NAME VARCHAR(255) NOT NULL;";
      mysql -u $dbUsername $dbPassword -e "alter table $dbName.TABLE_NAME add NEWCOLUMN double default 0;";

      #delete rows
      mysql -u $dbUsername $dbPassword -e "delete from $dbName.TABLE_NAME where TYPE=\"TYPEA\";";

  done
edate=`date +%s`
timeTaken=`expr $edate - $sdate`
echo "Time Taken = $timeTaken"
