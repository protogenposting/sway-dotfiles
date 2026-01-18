sleep 10
pactl load-module module-null-sink media.class=Audio/Sink sink_name=my-sink channel_map=stereo
pw-link my-sink:monitor_FL alsa_output.usb-Generic_USB_Audio-00.HiFi__Headphones__sink:playback_FR
pw-link my-sink:monitor_FR alsa_output.usb-Generic_USB_Audio-00.HiFi__Headphones__sink:playback_FL
pactl set-default-sink my-sink
