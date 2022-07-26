FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:0-14

# Update all Ubuntu Packages
RUN apt-get update && apt-get upgrade -y

# Install all apt-get packages
RUN apt-get install -y curl \
    python3-pip

#Install rust
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y

#Add Cargo to Path
ENV PATH="/root/.cargo/bin:${PATH}"

RUN echo "hi"

RUN curl -L https://foundry.paradigm.xyz | bash
RUN /bin/bash -c "source /root/.bashrc"

RUN $HOME/.foundry/bin/foundryup
