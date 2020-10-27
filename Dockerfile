FROM python:3.7

RUN mkdir /app
ADD /app/requirements.txt /app/requirements.txt
RUN cd /app; pip install -r requirements.txt
ADD /app/main.py /app/main.py
EXPOSE 5000
CMD ["python", "/app/main.py"]