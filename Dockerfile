FROM python:3.12.0-bookworm
RUN apt-get update &&\ 
    adduser myuser
ENV QR_CODE_IMAGE_DIRECTORY='static'
ENV QR_CODE_DEFAULT_URL='https://github.com/sagedemage'
ENV QR_CODE_DEFAULT_FILE_NAME='default.png'
WORKDIR /home/myuser
COPY --chown=myuser:myuser . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]