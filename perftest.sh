host="fabmedical-pim.mongo.cosmos.azure.com"
username="fabmedical-pim"
password="4I9hLLcXd6xnjWbX5Am26TCPnY3xOBpTkwnOtJwRuDxPJsk6XgnCJ4cEc6E2cveam5ylvRDBDf8WNyxWqYNtlA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
