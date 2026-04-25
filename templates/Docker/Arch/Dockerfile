# Use a imagem base do arch linux
FROM archlinux:latest


# Atualize os pacotes e instale pacotes essenciais
RUN pacman -Syu --noconfirm

# Instala os pacotes necessários
RUN pacman -S --noconfirm \
    curl \
    git \
    openssh \
    python \
    python-pip \
    rsync \
    stress 

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