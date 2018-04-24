FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9dc3d3914c7688e51d1a3fa4b22cc2553ebe839cfdc2993f9b5a1f9d2ad71449

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
