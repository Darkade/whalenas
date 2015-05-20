# WhaleNAS
A docker composer environment inspired by FreeNAS

    git clone git@github.com:Darkade/whalenas.git
    cd whalenas
    docker-compose up

At this point services include
 - [Plex](https://plex.tv/) Enjoy your videos, photos and music anytime, anywhere
 - [NZBget](http://nzbget.net/) The most efficient usenet downloader.
 - [Sonarr](https://sonarr.tv/) Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them.
 - [Couchpotato](https://couchpota.to/) Download movies automatically, easily and in the best quality as soon as they are available
 - [BitTorrent Sync](https://www.getsync.com/) Fast, private file sharing for teams and individuals.

And they can be turned on or off using the `docker-compose.yml` file.

I mean to add volumes so that all these machines can share files, otherwise this is kind of useless. But it works as is.
