FROM jupyter/datascience-notebook

MAINTAINER Motohiro Shibakawa <motohiro_shibakawa@denso.co.jp>

# install matplotlib extention https://github.com/matplotlib/jupyter-matplotlib
# https://github.com/matplotlib/jupyter-matplotlib/issues/112

RUN jupyter labextension uninstall jupyter-matplotlib
RUN jupyter labextension uninstall @jupyter-widgets/jupyterlab-manager
RUN conda update -y widgetsnbextension
RUN conda update -y nodejs
RUN pip uninstall -y ipympl
RUN pip install git+https://github.com/matplotlib/jupyter-matplotlib.git#egg=ipympl
RUN conda update jupyterlab -y
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib
RUN jupyter labextension update --all
RUN jupyter lab build


# for samba mount
USER root
RUN apt-get update
RUN apt-get install -y  cifs-utils


