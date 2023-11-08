FROM yahiawalid/ubuntu_base:git
RUN git clone https://github.com/meh-land/web_App.git ~/web_App
RUN apt update && apt upgrade -y
RUN apt install wget -y
RUN cd /opt
RUN wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run
RUN chmod +x xampp-linux-x64-8.2.4-0-installer.run
RUN yes | ./xampp-linux-x64-8.2.4-0-installer.run
RUN apt install nodejs npm -y
CMD bash