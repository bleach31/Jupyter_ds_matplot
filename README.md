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
docker run --rm -d --name jupyter_datascience_matplot \
     --net=host \
     bleach31/jupyter_datascience_matplot \
     jupyter-lab --no-browser --port=8889 --ip=0.0.0.0 \
     --allow-root --NotebookApp.token='xxx'
```

if you are behind proxy, add below option

```
     -e http_proxy="http://133.192.24.101:8080" \
     -e https_proxy="http://133.192.24.101:8080" \
```
Windows file sever mount.

```
docker exec jupyter_datascience_matplot "sudo mount -t cifs -o username=mdstoy,password=qiita //192.168.0.1/win_share /mnt/windows"
```

Onother way
mount from jupyter terminal

you needs run the container as root
```

docker run --rm  -d --name jupyter_datascience_matplot \
    --net=host \
    -e PASSWORD="xxx" \
    -e GRANT_SUDO=yes \
    --user root \
     bleach31/jupyter_datascience_matplot \
    jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 \
    --allow-root --NotebookApp.token='xxx' \
    --ContentsManager.allow_hidden=True
```

from jupyter terminal
```

```
sudo mount -t cifs -o username=mdstoy,password=qiita //192.168.0.1/win_share /mnt/windows
```
