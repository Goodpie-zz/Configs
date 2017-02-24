import json

filename = "/home/brandyn/.config/Google Play Music Desktop Player/json_store/playback.json"

# Open file and read in JSON data
with open(filename, 'r') as playback_data:
  json_data = json.load(playback_data)

  # Only display if song is playing
  playing = json_data['playing']
  if (playing):

    # Get the song names and artist
    song_name = json_data['song']['title']
    song_artist = json_data['song']['artist']

    # Display the song information
    print("{0} - {1}".format(song_name, song_artist))
  else:
    # No music, display nothing
    print("")

