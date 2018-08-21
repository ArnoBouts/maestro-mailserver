FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:77459244b1d72b8738edc192274fa92e9c96aef1bb92110c1c96ef04724eaae1

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
