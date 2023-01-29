FROM alpine:latest
COPY cmd.sh /
RUN chmod +x /cmd.sh
CMD ["sh", "/cmd.sh"]
