
OLD_IFS=$IFS
IFS=$'\n'  # Stands for Internal Field Separator

OPTIND=1
result=""

#getopts is a Bash command, to deal with command line arguments
while getopts "hp:sn:" opt; do
    case "$opt" in
	n)
		result=$OPTARG
		;;
    esac
done


cat $result | while read line
do
  #java -jar BerkeleyParser_KorV2.jar "너는 몇 살이야"
  #java -jar BerkeleyParser_KorV2.jar \"$line\"
  echo "java -jar BerkeleyParser_KorV2.jar \"$line\""
done
IFS=$OLD_IFS
