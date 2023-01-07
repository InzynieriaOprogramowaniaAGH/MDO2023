FROM ubuntu
RUN apt update
RUN apt upgrade
RUN apt install -y git
RUN apt install -y dotnet-sdk-6.0
RUN git clone https://github.com/laocane/calc.git
WORKDIR /calc
RUN dotnet build ConsoleApp2.sln
RUN dotnet test ConsoleApp2.sln
