FROM busybox:1.36.0-uclibc
COPY cmd.sh /
RUN chmod +x /cmd.sh
CMD ["sh", "/cmd.sh"]
