# Info
It's very straightforward, I had a lot of music playlists in Youtube I wanted to store.
I knew about yt-dlp being able to download full playlists, so I made a simple bash script that iterates through a text list and stores them in folders.

Then I set the script to run on each boot, to check for newer songs. Also we are using the flag `--download-archive` to avoid spamming again and again on every boot, this we improve the already downloaded checks.

And then, we upload the folders to the cloud (this not included in the script, runs on a separate service)

## Content of `playlists` file 
just a simple text file with the following structure (the folders will be created automatically):
```
folder_name1 => <url_playlist_name1>
folder_name2 => <url_playlist_name2>
...
folder_namen => <url_playlist_namen>
```
