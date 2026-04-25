# Use a imagem base do Ubuntu 20.04
FROM ubuntu:20.04


# Atualize os pacotes e instale pacotes essenciais
RUN DEBIAN_FRONTEND=noninteractive apt-get update

# Instala os pacotes necessários
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    openssh-client \
    openssh-server \
    python3 \
    python3-pip \
    rsync \
    build-essential \
    stress \
    && rm -rf /var/lib/apt/lists/*
    
# Cria as chaves para o sshd
RUN ssh-keygen -A

# Cria a senha para o root
RUN echo "root:root" | chpasswd

# Cria um usuario para o acesso ssh
RUN useradd -m -p "$(openssl passwd -1 '123')" user

# Defina o diretório de trabalho dentro do container
WORKDIR /home/user

# Exponha a porta 80 (ou outra, dependendo da aplicação)
EXPOSE 80

# Inicia o servidor ssh
CMD ["/usr/sbin/sshd", "-D"]