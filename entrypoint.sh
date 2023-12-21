#!/bin/sh

sed -i "s/0\.0\.0\.0/$ADDRESS/g" /app/txlib/$VERSION/config.json
sed -i "s/8080/$PORT/g" /app/txlib/$VERSION/config.json

echo Start sign service at $ADDRESS:$PORT

/bin/sh ./bin/unidbg-fetch-qsign --basePath=./txlib/$VERSION