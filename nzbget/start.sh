#!/bin/bash
set -e

[ ! -f /data/nzbget.conf ] && cp /usr/share/nzbget/webui/nzbget.conf /config/nzbget.conf

nzbget --daemon --configfile /config/nzbget.conf
