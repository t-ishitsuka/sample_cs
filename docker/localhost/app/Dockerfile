FROM mcr.microsoft.com/dotnet/sdk:7.0

LABEL maintainer="t-ishitsuka"

ENV TZ=Asia/Tokyo
ENV ASPNETCORE_URLS=https://*:7055;http://*:5102

WORKDIR /app

COPY app.csproj ./

RUN dotnet restore

COPY . .

RUN dotnet dev-certs https --clean && dotnet dev-certs https -t
