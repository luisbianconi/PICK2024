FROM golang:1.18 AS compilador
WORKDIR /app
COPY . ./
RUN go mod init hello
RUN go build -o /app/hello
#EXPOSE

### Inicio MultiStaging
FROM alpine:3.15.9
SHELL ["/bin/sh"]
WORKDIR /app
# se você configura o WORKDIR, você pode utilizar o ./ para executar os programas e comandos dentro do container
COPY --from=compilador /app/hello /app/hello
ENV APP="hello_world"
# ENV É UTILIZADO DENTRO DO CONTAINER, È SETADA UMA VARIAVEL, JUNTO COMO PATH E OUTRAS
ARG GIROPOPS="strigus"
# ARG SOMENTE É UTILIZADO EM MOMENTO DE BUILD. docker build. Não sendo utilizado dentro do container
ENV GIROPOPS=$GIROPOPS
# PASSANDO OS DADOS DO ARG GIROPOPS PARA A ENV GIROPOPS, OU SEJA, ARGUMENTO DE BUILD PARA VARIAVEL DENTRO DO CONTAINER
#RUN ash -c 'echo "O Giropops é: $GIROPOPS"'
# DEFININDO UM VOLUME PARA USO, VOLUME = NECESSIDADE DE PERSISTÊNCIA DE DADOS.
VOLUME /app/dados
CMD ["./hello"]
