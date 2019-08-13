#!/bin/sh

FILE="/var/log/randword.log"

echo "✨ Fake Elasticsearch is ready to receive your logs! ✨"

TIMEOUT=10

until test $((TIMEOUT--)) -eq 0 -o -f "$FILE" ; do sleep 1; done

if [ $TIMEOUT -eq -1 ]; then
    echo "Waited too long for logs to appear, dying 😢"
    exit 1
fi

# If this were really Elasticsearch, we would actually ingest these--
# but no one wants to deal with setting up Elasticsearch, for a demo,
# so just print logs to stdout.
tail -f $FILE
