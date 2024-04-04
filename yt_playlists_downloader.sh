#!/bin/sh
dir="/home/$USER/music/youtube/playlists"
# prepare the pwd, to not meedle with the later $0 $1 $2 variables sent by xargs, so it's already "precomputed"
xargs_command="xargs -P 2 -n 3 sh -c 'yt-dlp -f m4a --download-archive $dir/\$0/archive.txt -P $dir/\$0 \$2'"
# We use sh -c to get the $0 $1 $2 from xargs
cat "$dir/playlists" | sh -c "$xargs_command"
