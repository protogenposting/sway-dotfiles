import sqlite3

import shutil

import os

shutil.copyfile("/run/user/1000/c5202c8ec45440c1be03511b87d39ff7/storage/emulated/0/Download/KreateData.sqlite", "database.sqlite")

con = sqlite3.connect("database.sqlite")

cur = con.cursor()

res = cur.execute("SELECT id, name FROM Playlist")

data = cur.fetchall()

for playlist in data:
    res = cur.execute("Select * FROM SongPlaylistMap WHERE playlistId = " + str(playlist[0]))

    songs = cur.fetchall()

    i = 0

    for song in songs:
        os.system("yt-dlp -o playlists/" + playlist[1] + "/" + str(i) + ".mp3 -t mp3 https://www.youtube.com/watch?v=" + song[0])

        i += 1
