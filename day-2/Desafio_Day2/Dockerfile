FROM ubuntu:24.10
# Utilizei imagem ubuntu pois era a distro modelo da máquina
COPY ./giropops-senhas /giropops-senhas
# Copiando os arquivos do giropops senhas do Jeferson
ENV FLASK_APP=/giropops-senhas/app.py REDIS_HOST=localhost
# Setando Variaveis dentro do Container
RUN apt-get update && \
    apt-get install -y redis python3-pip python3-venv && \
    python3 -m venv venv && \	
    ./venv/bin/pip install --no-cache-dir -r /giropops-senhas/requirements.txt && \
    chmod +x /giropops-senhas/entrypoint.sh 
# One Time Run, uma camada de execução de tudo o que é necessário para a aplicação funcionar, dependencias python
# Pip, venv, redis etc.
EXPOSE 5000
# Expose de porta
ENTRYPOINT ["/giropops-senhas/entrypoint.sh"]
# ENTRYPOINT para execução
