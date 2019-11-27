FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:16eeed40afd8c267ef3f275a4efb26f5b5fc8962ffe13a06aa36e7b05be3dd30

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
