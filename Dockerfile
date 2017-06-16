FROM debian:7

RUN apt-get update

RUN apt-get install -y libtiff4-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev libwebp-dev tcl8.5-dev tk8.5-dev python-pip python-dev libblas-dev liblapack-dev libpng-dev gfortran git python2.7 libgeos-c1

RUN easy_install -U distribute
RUN pip install numpy
RUN pip install statsmodels pandas scipy pillow matplotlib shapely

WORKDIR /home

ADD * eyecode/

CMD python
