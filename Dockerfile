FROM busybox:1.32.0

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
