FROM cgr.dev/chainguard/python:latest-dev AS building

WORKDIR /app
RUN python -m venv venv
ENV PATH="/app/venv/bin":$PATH
COPY /giropops-senhas/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

## MultiStaging Start
FROM cgr.dev/chainguard/python:latest

WORKDIR /app
COPY ./giropops-senhas .
COPY --from=building /app/venv /app/venv
ENV PATH="/app/venv/bin:$PATH"
ENV REDIS_HOST=192.168.14.51
EXPOSE 5000

ENTRYPOINT ["flask","run","--host=0.0.0.0"]
