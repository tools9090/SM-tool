#!/usr/bin/env bash
# exit on error
set -o errexit


# Install Dependencies
pip install -r requirements.txt

python manage.py collectstatic --no-input

# Run Migration
python manage.py migrate