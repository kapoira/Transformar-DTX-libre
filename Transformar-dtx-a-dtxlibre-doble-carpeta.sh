find . -type f -iname *.dtx -exec sh -c 'iconv -f $(file -bi "$1" |sed -e "s/.*[ ]charset=//") -t utf-8 -o converted "$1" && mv converted "$1"' -- {} \;
find . -iname '*.xa' -execdir wine ../../xa122/xa.exe -d -u '{}' \;
find . -iname '*.dtx' -execdir sed -i -e 's/.xa/.wav/g' '{}' \; 
find . -iname '*.dtx' -execdir sed -i -e 's/.XA/.wav/g' '{}' \;
find . -iname '*.dtx' -execdir sed -i -e 's/\\/\//g' '{}' \;
find . -type f -iname "*.mp3" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}"  -acodec libvorbis "${FILE%.mp3}.ogg";' _ '{}' \;
find . -iname '*.dtx' -execdir sed -i -e 's/.mp3/.ogg/g' '{}' \;






