ls ~/.config/sway/Scripts/playlists

read -p "Choose Playlist: " playlist

TARGET_DIR="~/.config/sway/Scripts/playlists/$playlist"

ls ~/.config/sway/Scripts/playlists/$playlist|sort -R |tail -$N |while read file; do
    mpv ~/.config/sway/Scripts/playlists/$playlist/$file
done
