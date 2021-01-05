timestamp=$(date +"%F%T")

output="archive-$timestamp.txt"
touch $output

echo "" > $output

ia-saveurl() {
    curl -s -I "https://web.archive.org/save/$1" |
    grep location >> $output
    #TODO curl –data url=$1 -X POST http://archive.is/submit/
}

while IFS= read -r line; do
    ia-saveurl $line
done < $1