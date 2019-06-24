FROM rocker/shiny:3.5.1

RUN apt-get update && apt-get install libcurl4-openssl-dev libv8-3.14-dev -y

# Download and install library
RUN R -e "install.packages(c('stringr'))"

# copy the app to the image  
COPY app /srv/shiny-server/app
# copy config settings
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf

# make all app files readable (solves issue when dev in Windows, but building in Ubuntu) 
RUN chmod -R 755 /srv/shiny-server/app
# Permission isses with Rds file...
RUN chmod 777 /srv/shiny-server/app/chat.Rds

EXPOSE 4949

CMD ["/usr/bin/shiny-server.sh"]
