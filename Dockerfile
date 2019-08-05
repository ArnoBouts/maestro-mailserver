FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e317b5e21b80d062ab7f99a3108c12f82939820d9dd0724e53008af4aaa9e771

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
