FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:cf42c2f7b4bb737a613aca13d7e6df87d2bd575c2ef533faada6955f1ba05f69

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
