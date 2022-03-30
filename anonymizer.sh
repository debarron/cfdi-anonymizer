# anonimizer.sh
# This script taks the keywords file and substitues
# each attribute in the file with a string. The reason
# is to remove sensitive information from the XML data
# INPUT
# $1 xml invoice file
# $2 sensitive keyword filter

original="$1"
sensitive_filter="$2"

temp_1="tmp_1.xml"
cat $original > $temp_1

for keyword in $(cat "$sensitive_filter")
do
	key=$(echo $keyword | cut -d, -f1)
	value=$(echo $keyword | cut -d, -f2)
	sed -i 's/\('${key}'\)="[^"][^"]*"/\1="'${value}'"/g' $temp_1
done

echo "" >> $temp_1
cat $temp_1
rm $temp_1


