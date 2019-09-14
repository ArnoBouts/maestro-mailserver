FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:491e2f9ae6b13fc55b211bac72253cd7128d3cc8f6e6020ce620d48723676c4a

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
