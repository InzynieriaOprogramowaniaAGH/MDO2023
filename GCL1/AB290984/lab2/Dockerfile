#FROM ubuntu
#RUN apt update
#RUN apt upgrade
#RUN apt install -y git
#RUN apt install -y dotnet-sdk-6.0
#RUN git clone https://github.com/laocane/calc.git
#WORKDIR /calc
#RUN dotnet build ConsoleApp2.sln
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
#WORKDIR /App

# Copy everything
#COPY . ./
RUN git clone https://github.com/laocane/calc.git
WORKDIR /calc
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out
