FROM python:3.6

COPY . /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install gunicorn --no-cache-dir -r requirements.txt
#Expondo aplicacao
EXPOSE 8000
#Executando o comando para subir a aplicacao
CMD ["gunicorn", "notificador.wsgi:application", "--bind", "0.0.0.0:8000", "--workers", "3"]