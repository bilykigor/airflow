FROM apache/airflow:2.2.4

COPY requirements.txt .
RUN pip install --disable-pip-version-check -r ./requirements.txt

USER root

RUN apt-get -y update 
RUN apt-get install -y wget unzip curl

########## Setup google chrome ###########
##########################################
RUN cd /tmp/    
RUN wget https://chromedriver.storage.googleapis.com/100.0.4896.20/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN mv /usr/bin/google-chrome-stable /usr/bin/google-chrome
##########################################
##########################################

EXPOSE 5000

CMD /bin/bash
