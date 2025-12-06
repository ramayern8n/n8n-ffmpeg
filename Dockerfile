# Imagem oficial do N8N
FROM n8nio/n8n:latest

# Mudar para usuário root para poder instalar pacotes
USER root

# Instalar FFmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Voltar para o usuário padrão do N8N
USER node
