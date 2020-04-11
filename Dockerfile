FROM asdlfkj31h/debian-novnc:0.2
MAINTAINER "Gerolf Ziegenhain <gerolf.ziegenhain@gmail.com>"

USER 0

RUN apt-get update
RUN apt-get -y install curl

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
RUN install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
RUN sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
RUN apt-get install apt-transport-https
RUN apt-get update
RUN apt-get install code # or code-insiders

USER 1000
