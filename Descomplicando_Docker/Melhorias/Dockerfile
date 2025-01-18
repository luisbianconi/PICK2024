FROM alpine:3.20
#
COPY /giropops-senhas /giropops-senhas
# Copiando os arquivos do giropops senhas do Jeferson
ENV FLASK_APP=/giropops-senhas/app.py REDIS_HOST=localhost
# Setando Variaveis dentro do Container
RUN apk update && \
    apk add redis py3-pip py3-virtualenv && \
    python3 -m venv venv && \	
    ./venv/bin/pip install --no-cache-dir -r /giropops-senhas/requirements.txt && \
    chmod +x /giropops-senhas/entrypoint.sh 
# One Time Run, uma camada de execução de tudo o que é necessário para a aplicação funcionar, dependencias python
# Pip, venv, redis etc.
EXPOSE 5000
# Expose de porta
ENTRYPOINT ["sh","giropops-senhas/entrypoint.sh"]
# ENTRYPOINT para execução
