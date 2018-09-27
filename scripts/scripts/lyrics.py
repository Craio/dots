# https://github.com/willamesoares/lyrics-crawler

import sys
import dbus
import requests
import time
import os
from bs4 import BeautifulSoup

sys.path.insert(0, '/home/craig/Dropbox/Stuff/dots')
import geniusKey
from geniusKey import TOKEN

old_song_info = None

defaults = {
    'request': {
        'token': TOKEN,
        'base_url': 'https://api.genius.com'
    },
    'message': {
        'search_fail': 'The lyrics for this song were not found!',
        'wrong_input': 'Wrong number of arguments.\n' \
                       'Use two parameters to perform a custom search ' \
                       'or none to get the song currently playing on Spotify.'
    }
}

def get_current_song_info():
    session_bus = dbus.SessionBus()
    spotify_bus = session_bus.get_object('org.mpris.MediaPlayer2.spotify',
                                         '/org/mpris/MediaPlayer2')
    spotify_properties = dbus.Interface(spotify_bus,
                                        'org.freedesktop.DBus.Properties')
    metadata = spotify_properties.Get('org.mpris.MediaPlayer2.Player', 'Metadata')

    return {'artist': metadata['xesam:artist'][0], 'title': metadata['xesam:title']}
    return [
        str(spotify_metadata['xesam:artist'][0].title()),
        str(spotify_metadata['xesam:title'])
    ]

def request_song_info(song_title, artist_name):
    base_url = defaults['request']['base_url']
    headers = {'Authorization': 'Bearer ' + defaults['request']['token']}
    search_url = base_url + '/search'
    data = {'q': song_title + ' ' + artist_name}
    response = requests.get(search_url, data=data, headers=headers)

    return response

def scrap_song_url(url):
    page = requests.get(url)
    html = BeautifulSoup(page.text, 'html.parser')
    [h.extract() for h in html('script')]
    lyrics = html.find('div', class_='lyrics').get_text()

    return lyrics

def center_string(s):
    terminal_cols = os.popen('tput cols').read()
    return str("{:^" + str(int(terminal_cols) + 10) + "}").format(s)


def get_song_info():
    session_bus = dbus.SessionBus()
    spotify_bus = session_bus.get_object("org.mpris.MediaPlayer2.spotify",
                                         "/org/mpris/MediaPlayer2")
    spotify_metadata = dbus.Interface(spotify_bus,
                                      "org.freedesktop.DBus.Properties").Get(
        "org.mpris.MediaPlayer2.Player",
        "Metadata"
    )
    return [
        str(spotify_metadata['xesam:artist'][0].title()),
        str(spotify_metadata['xesam:title'])
    ]

def center_string(s):
    terminal_cols = os.popen('tput cols').read()
    return str("{:^" + str(int(terminal_cols) + 10) + "}").format(s)

while True:
    args_length = len(sys.argv)
    if args_length == 1:
        # Get info about song currently playing on Spotify
        current_song_info = get_current_song_info()
        song_title = current_song_info['title']
        artist_name = current_song_info['artist']
    elif args_length == 3:
        # Use input as song title and artist name
        song_info = sys.argv
        song_title, artist_name = song_info[1], song_info[2]
    else:
        print(defaults['message']['wrong_input'])

    # Search for matches in request response
    response = request_song_info(song_title, artist_name)
    json = response.json()
    remote_song_info = None

    for hit in json['response']['hits']:
        if artist_name.lower() in hit['result']['primary_artist']['name'].lower():
            remote_song_info = hit
            break

    # Extract lyrics from URL if song was found
    if remote_song_info:
        song_url = remote_song_info['result']['url']
        lyrics = scrap_song_url(song_url)
    else:
        print(defaults['message']['search_fail'])

    song_info = get_song_info()
    if song_info != old_song_info:
        old_song_info = song_info
        os.system('clear')
        print('\n\n\n')
        print(center_string('\033[4m{} - {}\033[0m\n'.format(artist_name, song_title)))
        print(lyrics)
    time.sleep(1)
