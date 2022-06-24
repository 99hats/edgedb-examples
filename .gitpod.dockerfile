FROM gitpod/workspace-full

RUN curl https://packages.edgedb.com/keys/edgedb.asc  | sudo apt-key add - \
      && echo deb https://packages.edgedb.com/apt $(lsb_release -cs) main | sudo tee /etc/apt/sources.list.d/edgedb.list \
      && sudo apt-get update && sudo apt-get install edgedb-1 -y