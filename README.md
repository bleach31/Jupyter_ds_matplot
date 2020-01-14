# Jupyter_ds_matplot

Jupyter Lab + matplot + Windowns file server mount


### jupyter_datascience
https://hub.docker.com/r/jupyter/datascience-notebook

### Matplotlib Jupyter Extension
https://github.com/matplotlib/jupyter-matplotlib

### Windows file Server mount for Ubuntu
https://qiita.com/mdstoy/items/54925cdcbca6d558b666

## Usage

```
docker run --rm -d\
     --net=host \
     --privileged \
     bleach31/jupyter_datascience_matplot \
     jupyter-lab --no-browser --port={port} --ip=0.0.0.0 \
     --allow-root --NotebookApp.token='{password}'
```

if you are behind proxy, add below option

```
     -e http_proxy="http://{address}:{port}" \
     -e https_proxy="http://{address}:{port}" \
```
Windows file sever mount.

the terminal from jupyter.

```
sudo mount -t cifs -o username={name},password={pw} //{address}/{dir} work
```


