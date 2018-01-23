FROM haproxy:1.7
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

ENV SMTP_DESTINATION="example.com:25"
EXPOSE 25000
EXPOSE 8888
