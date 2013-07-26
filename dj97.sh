#/bash/sh
referer="http://www.dj97.com/"
agent="Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10"
wget --referer="$1" --user-agent="$agent" http://m.dj97.com/djmusic/$1.mp4 -O "$2".mp4
