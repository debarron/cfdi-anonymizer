# anonimizer.sh
# This script taks the keywords file and substitues
# each attribute in the file with a string. The reason
# is to remove sensitive information from the XML data
# $1 xml invoice file

original="$1"
temp_1="tmp_1.xml"
cat $original > $temp_1

for keyword in $(cat "./keywords.txt")
do
	sed -i 's/\('${keyword}'\)="[^"][^"]*"/\1="XXX"/g' $temp_1
	#eval "$cmd" > $temp_2
	#cat $temp_2 > $temp_1
	#cat $temp | sed 's/\($keyword\)="[^"][^"]*"/\1="XXX"/g' > $temp_2
	#$temp=$temp_2
	echo ">> Done processing $keyword"
done
#cat $temp_2


#cat /home/delopez/Code/data/emitidas/0000101D-C2F5-4C67-914C-C00B75ED8A35.xml | sed 's/\(SelloSAT\)="[^"][^"]*"/\1="XXX"/'
