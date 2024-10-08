#!/bin/bash

#v2
for filename in grab/grab_*.xml
do
  # Move firs one
  if [[ "$filename" == *"grab_0.xml"* ]]; then
    mv -f "$filename" "epg.xmltv"
    continue
  fi
  echo -e "merge ${filename}"
  tv_merge -i "${filename}" -m "epg.xmltv" -o "epg.xmltv"
  
done;

# after merge same data is wrong
echo "Normalize"
xmlstarlet tr normalize.xsl epg.xmltv > epg_n.xmltv
mv -f epg_n.xmltv epg.xmltv
