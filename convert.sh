#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 ISJ zip file"
  exit 1
fi

TEMPFILE=$(mktemp temp.XXXXXX)
FILELIST=$(unzip -l $1 | grep csv$ | awk '{print $4}')
unzip -p $1 ${FILELIST} | nkf -S -w > ${TEMPFILE}
/usr/local/bin/csv2geojson  --lat 緯度 --lon 経度 ${TEMPFILE}
rm ${TEMPFILE}
