FROM python:3.11-slim

# Не создаём .pyc и сразу пишем логи в stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir fastapi uvicorn

# Копируем приложение
COPY main.py .

# Открываем порт
EXPOSE 2367

# Запуск приложения
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "2367"]
