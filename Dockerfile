FROM python:alpine3.10

RUN echo "Installing AWS" && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade --no-cache-dir awscli boto3 && \
    echo "Cleaning files!" && \
    rm -rf /tmp/* /var/cache/apk/* && \
    aws --version && \
    echo "Done!"
