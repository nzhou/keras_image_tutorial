FROM tensorflow/tensorflow:1.12.0-py3

RUN apt-get update && apt-get install -y graphviz

RUN pip3 install \
	keras \
	pydot \
	graphviz \
	matplotlib \
	numpy \
	ipython[all] \
	imageio

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh

