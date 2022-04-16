FROM apache/airflow:2.2.4

#COPY requirements.txt .
#RUN pip install --disable-pip-version-check -r ./requirements.txt

EXPOSE 5000

CMD /bin/bash
