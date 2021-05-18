FROM alpine:latest

ENV AWS_CDK_VERSION=1.104.0

RUN apk -v --no-cache --update add \
        nodejs \
        npm \
        python3 \
        ca-certificates \
        groff \
        less \
        bash \
        make \
        curl \
        wget \
        zip \
        && \
    update-ca-certificates && \
    npm install -g aws-cdk@${AWS_CDK_VERSION}

VOLUME [ "/root/.aws" ]
VOLUME [ "/aws" ]

VOLUME ["/usr/lib/python3.7/site-packages/"]

WORKDIR /aws
ENTRYPOINT ["/usr/bin/cdk"]
