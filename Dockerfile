FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:95644d0b71bf98045076f0dddcb4a8928acdc5a8d4fd50e11a5b4429042438ca

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
