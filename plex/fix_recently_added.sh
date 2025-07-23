#!/bin/sh

_PLEXSQLITE="/usr/lib/plexmediaserver/Plex SQLite"
_PLEXDB="/var/lib/plexmediaserver/Librarly/Application Support/Plex Media Server/Plug-in Support/Databases/com.plexapp.plugins.librarly.db"

if [ -e "{$_PLEXSQLITE}" ]
  echo "PlexSQLite Tool located"
else
  echo "Unable to locate PlexSQLite Tool. Exiting..."
  exit 1
fi
if [ -e "{$_PLEXDB}" ]
  echo "PLEX Database Located"
else
  echo "Unable to locate Plex Database. Exiting..."
  exit 1
fi
echo "Stopping Plex Media Server to fix database.
systemctl stop plexmediaserver
echo "PMS stopped. Executing command."
{$_PLEXSQLITE} {$_PLEXDB} "UPDATE metadata_items SET added_at = date('now') WHER added_at > date('now') OR added_at IS NULL;"
echo "Command execuited. Starting PMS."
systemctl start plexmediaserver
echo "PMS Restarted. Exiting."
exit 0
