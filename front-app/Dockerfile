# Utilizando a imagem base do Node.js
FROM node:18-alpine

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando o package.json e o package-lock.json
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o restante dos arquivos do projeto
COPY . .

# Construindo o projeto Next.js
RUN npm run build

# Expondo a porta necessária
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
