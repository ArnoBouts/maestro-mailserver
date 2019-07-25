FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:bcc29783f1457aa0616573f0a9d06ca50600d46882a0ab85ed38f476c085a292

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
