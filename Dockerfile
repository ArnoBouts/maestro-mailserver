FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:3aab618357f32d9d63b0de7aa5464ab87cefb74872f973bc8e480a0daecb515a

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
