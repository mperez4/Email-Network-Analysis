FROM python:3.6

WORKDIR /home/insight

COPY . /home/insight

RUN apt-get update && apt-get install -y graphviz

RUN pip install jupyter && \
    pip install pandas

#install the requirements 
RUN pip --no-cache-dir install -r /home/insight/requirements.txt 

# Exposing ports
EXPOSE 8888

# Running jupyter notebook
# --NotebookApp.token ='demo' is the password
CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token='insight'"]
