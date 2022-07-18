# youtube-dl

`-i` - ignore errors

`-c` - continue

`-t` - use video title as file name

`--extract-audio` - extract audio track

`--audio-format mp3` - convert to mp3

`--audio-quality 0` - the best audio quality

`--yes-playlist` - affirm that url points to a playlist

`YT_URL` - video url from youtube


```bash
# Download single entry
youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 YT_URL

# Download playlist
youtube-dl -ict --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 https://www.youtube.com/playlist?list=UUCvVpbYRgYjMN7mG7qQN0Pg
```

# cmus
* `:update-cache` and if not `:clear` and add all again `:add .`
