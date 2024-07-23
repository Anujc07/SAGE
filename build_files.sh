#!/bin/bash

echo "BUILD START"

# Install dependencies
python3.9 -m pip install -r requirements.txt

# Create the output directory
mkdir -p staticfiles_build/static

# Collect static files
python3.9 Highrise/manage.py collectstatic --noinput --clear --settings=Highrise.settings

echo "BUILD END"
