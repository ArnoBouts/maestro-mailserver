FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ee0a8dc62d08aed13ee5e921c83dd7cc085ec2191d3c7cac247e3fb24d0d79a9

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
