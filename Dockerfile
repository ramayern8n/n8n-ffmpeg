# Imagem oficial do N8N
FROM n8nio/n8n:latest

# Mudar para usuário root para poder instalar pacotes
USER root

# Instalar FFmpeg em Alpine
RUN apk update && apk add --no-cache ffmpeg

# Expor a porta do N8N para Railway detectar como serviço web
EXPOSE 5678

# Voltar para o usuário padrão do N8N
USER node

# Comando padrão do container
CMD ["n8n", "start"]
