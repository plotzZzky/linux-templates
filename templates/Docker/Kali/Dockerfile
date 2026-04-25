# Versão mais recente do kali linux
FROM kalilinux/kali-rolling

# Atualiza o sistema
RUN apt -y update && DEBIAN_FRONTEND=noninteractive apt -y dist-upgrade

# Install common and useful tools
RUN apt -y install curl \
wget net-tools whois netcat-traditional pciutils \
usbutils openssh-client openssh-server rsync

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