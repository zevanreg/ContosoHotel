cd /app
gunicorn --bind=0.0.0.0 --workers=4 startup:app --log-level debug --access-logfile - --error-logfile -