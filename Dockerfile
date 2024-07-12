# Utilizando a imagem base do Node.js
FROM node:18-alpine

# Definindo o diretório de trabalho
WORKDIR /home/front-app/app

# Copiando o package.json e o package-lock.json
COPY ./front-app/package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o restante dos arquivos do projeto
COPY ./front-app .

# Construindo o projeto Next.js
RUN npm run build

# Expondo a porta necessária
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
