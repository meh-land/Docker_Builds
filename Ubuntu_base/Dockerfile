FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install micro -y
RUN apt install net-tools -y
RUN apt install inetutils-ping -y
RUN apt install curl -y
RUN apt install git -y
RUN DEBIAN_FRONTEND=noninteractive TZ=Africa/Cairo apt -y install tzdata
CMD bash

