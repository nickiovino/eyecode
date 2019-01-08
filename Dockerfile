FROM debian:7

RUN apt-get update

RUN apt-get install -y libtiff4-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev libwebp-dev tcl8.5-dev tk8.5-dev python-pip python-dev libblas-dev liblapack-dev libpng-dev gfortran git python2.7 libgeos-c1

RUN pip install --index-url=https://pypi.python.org/simple/ distribute --upgrade
RUN pip install --index-url=https://pypi.python.org/simple/ numpy
RUN pip install --index-url=https://pypi.python.org/simple/ statsmodels==0.8.0 pandas==0.20.2 scipy pillow matplotlib==2.0.2 shapely

WORKDIR /home

ADD * eyecode/

CMD python
