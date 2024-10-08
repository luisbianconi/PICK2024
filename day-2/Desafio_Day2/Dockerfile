FROM ubuntu:24.10
COPY ./giropops-senhas /giropops-senhas
ENV FLASK_APP=/giropops-senhas/app.py REDIS_HOST=localhost
RUN apt-get update && \
    apt-get install -y redis python3-pip python3-venv && \
    python3 -m venv venv && \	
    ./venv/bin/pip install --no-cache-dir -r /giropops-senhas/requirements.txt && \
    chmod +x /giropops-senhas/entrypoint.sh 
EXPOSE 5000
ENTRYPOINT ["/giropops-senhas/entrypoint.sh"]
