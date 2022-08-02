FROM ghcr.io/catthehacker/ubuntu:act-20.04

# Install .NET SDK
# https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#2004
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
  sudo dpkg -i packages-microsoft-prod.deb && \
  rm packages-microsoft-prod.deb

RUN sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

# Install Mono
# https://www.mono-project.com/download/stable/#download-lin-ubuntu
RUN sudo apt-get install gnupg ca-certificates -y && \
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
  echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list && \
  sudo apt-get update

RUN sudo apt-get install mono-devel -y
