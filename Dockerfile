FROM mcr.microsoft.com/azure-cli 
LABEL repository="https://github.com/frodehus/azwebapp-container-action"
LABEL maintainer="Frode Hus"

WORKDIR /action

ADD entrypoint.sh .
RUN ["chmod", "+x", "/action/entrypoint.sh"]
ENTRYPOINT [ "/action/entrypoint.sh" ]