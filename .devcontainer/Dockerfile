# Utilizando a imagem base do Node.js
FROM mcr.microsoft.com/devcontainers/javascript-node:18

# Instalar dependências adicionais se necessário
RUN apt-get update && apt-get install -y git

# Configurar o usuário não-root
USER vscode
