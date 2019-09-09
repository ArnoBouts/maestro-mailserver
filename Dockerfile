FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:acde311543312091a7eb1b4dff3de876a22d26bf275380689392bcebce1175ea

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
