# Imagem oficial do N8N
FROM n8nio/n8n:latest

# Mudar para usuário root para poder instalar pacotes
USER root

# Instalar FFmpeg em imagem baseada em Alpine (usa apk, não apt-get)
RUN apk update && apk add --no-cache ffmpeg

# Voltar para o usuário padrão do N8N
USER node
