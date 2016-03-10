FROM lukovkin/dockerfile-keras

RUN conda install -y \
    jupyter \
    matplotlib \
    seaborn

VOLUME /notebook
WORKDIR /notebook
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0
