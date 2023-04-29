#!/bin/sh
if [ -f "~/yt_dlp" ]; then
    echo "folder already present"
    else mkdir ~/yt_dlp
fi

var=`pbpaste`
echo "website pasted as:" && echo $var

if [[ $var == *"youtu.be"* ]]
then
    echo "short link detected"
    ID="$(cut -d'/' -f4 <<<"$var")"
    echo $ID
fi
if [[ $var == *"watch?v="* ]]
then
    echo "long link detected"
    ID="$(cut -d'=' -f2 <<<"$var")"
    echo $ID
fi
if [[ $var == *"&list"* ]]
then
    echo "playlist link detected"
    ID="$(cut -d'&' -f1 <<<"$ID")"
    echo $ID
fi
yt-dlp -f 'ba' -x --audio-format mp3 -o '~/yt_dlp/%(title)s-%(id)s.%(ext)s' -- $ID && open ~/yt_dlp/ 
for i in {1..30}
do
    echo
done
killall "Terminal"
echo && echo && echo && echo && echo && echo && echo
echo "               You can now press CMD+Q to close this window"
echo && echo && echo && echo && echo && echo
exit