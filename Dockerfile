FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ee4ea82cca0a74f9b930eec1072ad620d99b86f099c57d3a3d3f5d3f2d7bd6aa

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
