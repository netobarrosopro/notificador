FROM python:3.6

COPY . .

WORKDIR .

COPY requirements.txt ./

RUN pip intall --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "notificador.wsgi:application", "--bind", "0.0.0.0:8000", "--workers", "3"]