FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b53ada798e64202da7b636bff21fee7f53f06df98dfe8726e90508e9aa53a74b

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
