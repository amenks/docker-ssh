# Use a base image with SSH installed (you can choose a different base image if needed)
FROM ubuntu:latest

# Install SSH server
RUN apt-get update && \
    apt-get install -y openssh-server &&\
    apt-get clean


# Create the SSH directory
RUN mkdir /var/run/sshd    

# Set the root password for the SSH server (CHANGE THIS PASSWORD!)
RUN echo 'root:akkapaka' | chpasswd

# Permit root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH port (optional, change if needed)
EXPOSE 22

# Start the SSH server
CMD ["/usr/sbin/sshd", "-D"]