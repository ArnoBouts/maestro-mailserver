FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:8086188106c8c292711cebc152726a1bb3a553bbe66370bec5b36e5f1be44809

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
