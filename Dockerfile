FROM cgswong/aws:aws
COPY ebs-snapshot.sh /opt/ebs-snapshot.sh
RUN apk add --update bash coreutils && rm -rf /var/cache/apk/* && chmod 755 /opt/ebs-snapshot.sh
ENTRYPOINT ["/opt/ebs-snapshot.sh"]