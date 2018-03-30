FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ee3e8e893e3db6d03d530c3ede6ad083cfea0dc9352cbe14b56e323391983e3e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
