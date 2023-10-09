python3 manage.py collectstatic --noinput
python3 manage.py migrate
gunicorn --bind 0.0.0.0:8000 --workers 3 --reload ci_cd_example.wsgi:application
