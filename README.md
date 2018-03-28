# Email Network Analysis Sandbox 

Clone this repository and add your data files to /data.

`cd Email-Network-Analysis`

`docker build -t insight-ena .`

`cd data/`

`pwd`

`cd ../`

`docker run -it --name ena-img -p 8888:8888 -v pwd-data-folder:/home/insight/data insight-ena` 

