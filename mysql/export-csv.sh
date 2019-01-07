echo "$1"
echo "$2"
mysql -h hostname -u username -P 3306 -ppassword --batch -e "select * from $1 where field = 'bla' limit 10" |
sed 's/tablename/","/g'| sed 's/^/"/g' | sed 's/$/"/g' | sed 's/\n//g' > export.csv
