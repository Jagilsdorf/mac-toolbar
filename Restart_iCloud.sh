#!/bin/zsh
for i in {1..5}
do
    echo "Loading..."
    bird_pid=$(pgrep -f bird)
    kill -9 $bird_pid
    sleep 1
done
for i in {1..30}
do
    echo
done
killall "Terminal"
echo && echo && echo && echo && echo && echo && echo
echo "               You can now press CMD+Q to close this window"
echo && echo && echo && echo && echo && echo
exit