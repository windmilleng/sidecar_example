FILE="/usr/share/logs/out.txt"

echo "✨ Fake Elasticsearch is ready to receive your logs! ✨"

until [ -f $FILE ]
do
    sleep 1
done

# If this were really Elasticsearch, we would actually ingest these--
# but no one wants to deal with setting up Elasticsearch, for a demo,
# so just print logs to stdout.
tail -f /usr/share/logs/out.txt
