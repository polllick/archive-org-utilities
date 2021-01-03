touch archivelist.txt

ia-saveurl() {
    curl -s -I "https://web.archive.org/save/$1" |
    grep location >> archivelist.txt
}

ia-saveurl $1