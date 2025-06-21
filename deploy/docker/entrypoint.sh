#!/bin/bash
set -e

echo "⏳ Ждём PostgreSQL..."
sleep 10

echo "📦 Применяем миграции..."
python manage.py migrate

echo "🎨 Собираем статику..."
python manage.py collectstatic --noinput

echo "🚀 Запускаем Gunicorn..."
exec gunicorn linux_space.wsgi:application --bind 0.0.0.0:8000

