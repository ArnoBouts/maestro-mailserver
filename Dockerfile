FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:7f65a1f53687d894c3f2a0612ce69006d5b52bce9af833e4f27b2ad078d40537

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
