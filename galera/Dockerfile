# docker-dna/galera/Dockerfile
#
# VERSION    0.1.0
#
FROM capttofu/docker-dna_base
MAINTAINER Patrick aka CaptTofu Galbraith , patg@patg.net

# Update distribution
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

# Add files
ADD . ./DockerDNA

RUN mkdir /.ssh

# Install Percona XtraDB Cluster 
RUN ( echo '[docker-dna_galera]' && \
      echo 'localhost' \
    ) > /etc/ansible/hosts \
      && ansible-playbook ./DockerDNA/dna.yml --connection=local \
      && apt-get clean

# Expose MySQL/Galera
EXPOSE 3306 4444 4567 4568 9200

# entrypoint 
CMD ['/usr/local/bin/mysql_run.sh']
