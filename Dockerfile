FROM python:2-alpine
MAINTAINER marnitto@gmail.com

# Add DNS
RUN echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4\n" > /etc/resolv.conf

ADD . /opt/
WORKDIR /opt/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD ["python", "main.py"]

