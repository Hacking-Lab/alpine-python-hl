FROM hackinglab/alpine-base-hl:3.2
LABEL maintainer="Ivan Buetler <ivan.buetler@hacking-lab.com>"

# Add the files
ADD root /

WORKDIR /app

RUN echo "**** install Python ****" && \
    apk add --no-cache python3 py3-pip py3-virtualenv && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -rf /var/cache/apk/* && \
    cd /app && \
    pip3 install -r requirements.txt --break-system-packages

