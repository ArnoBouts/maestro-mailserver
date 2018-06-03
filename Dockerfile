FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:6f6cb1aef9aab6ee9db65fe3e4367c268da79d75efa622960f53c4d9e0c9d052

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
