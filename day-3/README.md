O Dia 3 Consiste em Arquivos Dockerfile resolvendo o problema do Day-2, com 2 containers, um executando o GIROPOPS-SENHAS e Outro o REDIS
O Problema foi solucionado por mim no Day-2, com um unico container, executando os dois serviços
Nas Aulas, Jeferson sobe o Container do Giropops Senhas passando o ENV com o IP do HOST, onde ele expos a porta do container do REDIS
Permitindo assim o Giropops-Senhas acessar o Banco de Dados, com o IP do Host Especificado, Pois tem o BIND de Portas.
#5000 -> Porta Giropops Senhas
#6379 -> Redis
Ambas Máquinas com Bind de Portas no Host Local, então se apontar o IP do Host os containers de comunicam.
