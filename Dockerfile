FROM phusion/baseimage:0.9.16

# Enable insecure SSH logins.
#
# Get 'insecure_key':
# > curl -o insecure_key -fSL https://github.com/phusion/baseimage-docker/raw/master/image/insecure_key
# > chmod 600 insecure_key
#
RUN /usr/sbin/enable_insecure_key

# add bitcoin repository and install latest bitcoind
RUN apt-get update && apt-get install -qy software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update && apt-get install -qy bitcoind

# manifest: expose, run
ENTRYPOINT ["/sbin/my_init"]
CMD ["/bin/bash"]
