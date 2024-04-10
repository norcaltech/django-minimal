FROM python:3.11-slim
LABEL authors="Arsen Movsesyan"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN mkdir -p /opt/app
COPY requirements.txt /opt/app

WORKDIR /opt/app

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /opt/app

#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#ENTRYPOINT ["sh", "entrypoint.sh"]
