FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:213018dd0cd29cfbf3ffed381c2343e5a260b3e84612261716c2ca5ccfa6f530

COPY dovecot-ldap.conf.ext /etc/dovecot

COPY maestro-generate-dkim-config /usr/local/bin
