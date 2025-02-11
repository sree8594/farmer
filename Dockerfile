FROM ubuntu
RUN apt update -y && apt install apache2 -y 
RUN cd /var/www/html/ && apt install git -y && apt install git -y
WORKDIR /var/www/html/
RUN git clone https://github.com/sree8594/farmer.git
ENTRYPOINT apache2ctl -DFOREGROUND
EXPOSE 80
ENV name sreekanth reddy
