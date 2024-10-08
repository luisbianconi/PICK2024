FROM python:3.11.4-alpine3.18

WORKDIR /app
COPY ./giropops-senhas/requirements.txt .
COPY ./giropops-senhas/app.py .
COPY ./giropops-senhas/templates templates/
COPY ./giropops-senhas/static static/

#ENV REDIS_HOST=x.x.x.x
# user --env e esta variavel, deixei aqui para documentação 

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask","run","--host=0.0.0.0"]
