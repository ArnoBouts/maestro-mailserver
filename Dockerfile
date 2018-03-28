FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:cd44fdf931f9fad3d49ef0ba296038c0a281bd55acf80cf990395454df2840c5

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
