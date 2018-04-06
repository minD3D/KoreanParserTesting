
OLD_IFS=$IFS
result=""

#getopts is a Bash command, to deal with command line arguments
while getopts "hp:sn:" opt; do
    case "$opt" in
	n)
		result=$OPTARG
		;;
    esac
done

sed -i -e '/FILE/d' $result
sed -i -e '/Loading/d' $result
sed -i -e 's/('[A-Z]*'//g' $result
sed -i -e 's/)//g' $result
sed -i -e ':a;N;$!ba;s/\n/,/g' $result
sed -i -e 's/  / /g' $result
sed -i -e 's/  / /g' $result
sed -i -e 's/  / /g' $result
sed -i -e 's/  / /g' $result
sed -i -e 's/  / /g' $result
sed -i -e 's/  / /g' $result
