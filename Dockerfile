FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:5dfccf7d70fe411ee469ffb2a0870fe18abc8826d6bcd5ed958c64e509405249

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
