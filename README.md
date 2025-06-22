# 🐧 Linux Space 🌿

_Лёгкое, философское и открытое пространство для изучения Linux, DevOps и творчества._

## ✨ О проекте
Linux Space — это блог-платформа, вдохновлённая природой, терминалами и открытым кодом.  
Она построена на Django + Nginx + Docker, и оформлена с любовью к системному мышлению.

## 🛠️ Стек технологий
- Python / Django
- Docker, Docker Compose
- Nginx + Gunicorn
- PostgreSQL
- Let's Encrypt + HTTPS

## 🧭 Архитектура проекта
<pre>
[ Браузер ]
     │  https
     ▼
[ Nginx (контейнер) ]
     │  proxy_pass
     ▼
[ Gunicorn + Django (контейнер) ]
     │  ORM
     ▼
[ PostgreSQL (контейнер) ]
</pre>

<img src="https://github.com/user-attachments/assets/5baf77f8-eb5b-4635-b1a6-3ad85c2c6640"
     alt="Preview"
     style="width:500px; border-radius:8px;"/>


🚀 Алгоритм установки Linux Space
📦 1. Клонируй репозиторий
```bash
git clone https://github.com/<твой-юзернейм>/linux-space.git
cd linux-space
```

🛠️ 2. Создай .env файл из шаблона
```bash
cp .env.example .env
```

⚙️ В .env укажи:
SECRET_KEY, ALLOWED_HOSTS
Параметры PostgreSQL (имя, юзер, пароль)
Домен для HTTPS, если нужен

🐳 3. Собери контейнеры и запусти проект
```bash
docker compose up -d --build
```
Проверь:
```bash
docker compose ps
```

🎛️ 4. Проверь работоспособность
Открой в браузере: http://localhost
или настроенный https://yourdomain.com

🔐 5. Создай суперпользователя Django
```bash
docker compose exec web python manage.py createsuperuser
```
Теперь доступ в /admin открыт тебе.

🧰 Дополнительно (опционально):
SSL автоматически обновляется (если Let's Encrypt настроен)
Данные хранятся в PostgreSQL внутри контейнера
