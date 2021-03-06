FROM centos/python-36-centos7
MAINTAINER muzo kahraman
ENV  LC_ALL en_US.UTF-8
ENV  LANG   en_US.UTF-8
USER root
RUN mkdir /muzo
RUN pip3 install requests 
ADD exchange_content.py /muzo
ENTRYPOINT ["python3", "/muzo/exchange_content.py"]
