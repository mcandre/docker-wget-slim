FROM progrium/busybox
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN opkg-install wget
ENTRYPOINT ["/usr/bin/wget"]
