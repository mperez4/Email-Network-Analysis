FROM python:3.6

WORKDIR /home/insight

COPY . /home/insight

RUN apt-get update && apt-get install -y graphviz

RUN pip install jupyter && \
    pip install pandas

RUN pip --no-cache-dir install -r /home/insight/requirements.txt 

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='insight'"]
