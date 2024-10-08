#!/bin/bash
## Start Redis
service redis-server start
#
## Start Flask
exec /venv/bin/flask run --host=0.0.0.0
