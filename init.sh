#!/bin/bash
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello
sudo /etc/init.d/gunicorn restart
#sudo gunicorn -с /etc/gunicorn.d/hello hello:app
sudo gunicorn hello:app
