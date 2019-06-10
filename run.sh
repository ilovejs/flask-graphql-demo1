#!/usr/bin/bash

# export FLASK_APP=app.py
export FLASK_APP=hello.py
export FLASK_ENV=dev

echo $FLASK_APP
echo $FLASK_ENV

# honcho start

flask run