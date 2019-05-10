FROM python:3.5

# File Author / Maintainer
MAINTAINER Omar Lari

# Copy source file and python req's
COPY hello.py /usr/src/app/
COPY requirements.txt /

# Install requirements
RUN pip install -r /requirements.txt

# Set default AWS region
ENV AWS_DEFAULT_REGION us-east-1

EXPOSE 80

CMD ["python", "/usr/src/app/hello.py"]
~
