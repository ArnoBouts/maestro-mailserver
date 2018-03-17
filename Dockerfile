FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:68aa969883bddd4d80d1155b2bee24a0130a2500500598e4b76add006203a925

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
