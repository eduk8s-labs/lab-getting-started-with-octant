FROM quay.io/eduk8s/workshop-dashboard:master

COPY --chown=1001:0 . /home/eduk8s/

RUN curl -sL -o /tmp/octant.tar.gz https://github.com/vmware-tanzu/octant/releases/download/v0.10.2/octant_0.10.2_Linux-64bit.tar.gz && \
    mkdir -p /home/eduk8s/bin && \
    tar -C /home/eduk8s/bin --strip-components 1 -xf /tmp/octant.tar.gz octant_0.10.2_Linux-64bit/octant && \
    rm -f /tmp/octant.tar.gz
