#!/bin/bash
## Start Redis
/usr/bin/redis-server&
#
## Start Flask
/venv/bin/flask run --host=0.0.0.0
