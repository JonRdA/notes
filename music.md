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

# new code
yt-dlp -f 'ba' -x --audio-format mp3  <youtube-url>  -o '%(title)s.mp3'
```

# cmus
* Tutorial [link](https://linux.die.net/man/7/cmus-tutorial)
* `:update-cache` and if not `:clear` and add all again `:add .`


## cheatsheet
| Command            | Description                          |
|--------------------|--------------------------------------|
| 1                  | Library                              |
| 2                  | Sorted Library                       |
| 4                  | Play Queue                           |
| 7                  | Settings                             |
| :add `<directory>` | Add files to library                 |
| j                  | Up                                   |
| k                  | Down                                 |
| l                  | Scrub forward                        |
| h                  | Scrub back                           |
| g                  | Top of list                          |
| G                  | Bottom of list                       |
| space              | Expand tree                          |
| tab                | Switch between tabs                  |
| enter              | Start playing song                   |
| v                  | Stop playback                        |
| b                  | Next track                           |
| z                  | Previous track                       |
| c                  | Pause track                          |
| x                  | Restart track                        |
| i                  | Jump view to currently playing track |
| /                  | Search cmus                          |
| n                  | Next instance of search result       |
| -                  | Reduce volume by 10%                 |
| +                  | Increase volume by 10%               |
| p                  | Move song down               |
| P                  | Move song up |



# playitslowly
It is unmantained and does not work for GTK4, only with GTK3.
Add `gi.require_version('Gtk', '3.0')` after line 34
`gi.require_version('Gst', '1.0')` on file `app.py` usually on 
directory `/usr/local/lib/python3.10/dist-packages/playitslowly/`
