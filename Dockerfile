FROM ubuntu

#postgres
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8
RUN apt-get install wget && \
    echo 'deb http://apt.postgresql.org/pub/repos/apt/ squeeze-pgdg main' >> /etc/apt/sources.list.d/pgdg.list && \
    wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - && \
    apt-get -y update && \
    apt-get -y install postgresql postgresql-contrib libpq-dev

CMD /bin/bash
