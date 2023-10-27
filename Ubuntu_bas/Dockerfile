FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install micro -y
RUN apt install net-tools -y
RUN apt install inetutils-ping -y
RUN apt update && apt install tzdata -y
ENV TZ="Africa/Cairo"
CMD bash

