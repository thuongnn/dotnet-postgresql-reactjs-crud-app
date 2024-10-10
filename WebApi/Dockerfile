FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /build

COPY WebApi/WebApi.csproj .
RUN dotnet restore WebApi.csproj
COPY WebApi/* .
RUN dotnet publish --no-restore -c Release -o /build/out

FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build /build/out .
ENTRYPOINT ["dotnet", "/app/WebApi.dll"]