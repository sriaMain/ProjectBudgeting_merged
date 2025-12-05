#!/usr/bin/env bash
# exit on error
set -o errexit

# Frontend build
echo "Building frontend..."
cd Project_Budgeting-FE-
npm install
npm run build
cd ..

# Backend build
echo "Building backend..."
cd Project_Budgeting-BE-
pip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py migrate
