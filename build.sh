# Crea script que se ejecuta en linux 3-10-2023
#!/usr/bin/env bash
# exit on error
set -o errexit

# poetry install

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
