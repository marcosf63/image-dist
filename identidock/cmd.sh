#!/bin/bash
set -e

if [ "$ENV" = 'DEV' ]; then
    echo "Rodando um servidor de desenvolvimento"
    exec python "identidock.py"
else
    echo "Rodando servidor de produção"
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py --callable app --stats 0.0.0.0:9191
fi
