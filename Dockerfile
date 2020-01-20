FROM nunofgs/octoprint:alpine

COPY --from=alpine/socat /usr/bin/socat /bin/socat
COPY socat.sh ~/.octoprint/socat.sh

ENV SOCAT-SERVER 192.168.1.10
ENV SOCAT-PORT 50000

ENTRYPOINT ["/root/.octoprint/socat.sh"
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
