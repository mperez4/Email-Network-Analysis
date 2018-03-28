# Email Network Analysis Sandbox 

Clone this repository and add your data files to /data.

`cd Email-Network-Analysis`

`docker build -t insight-ena .`

`cd data/`

`pwd`

`docker run -it -p 8888:8888 -v path-to-data-folder:/home/insight/data insight-ena bash` 

