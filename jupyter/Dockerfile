FROM jupyter/datascience-notebook:latest


USER root

COPY fix-groups.sh /usr/local/bin/before-notebook.d/fix-groups.sh
RUN chmod +x /usr/local/bin/before-notebook.d/fix-groups.sh

RUN pip install kagglehub

## Install dependencies for db connection  ##
RUN pip install psycopg2-binary

USER ${NB_UID}
