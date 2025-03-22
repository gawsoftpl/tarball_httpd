FROM python:3.9.21-alpine3.20

COPY tarball_httpd/__main__.py server.py

ENV PORT=8080
ENV DIRECTORY=/data

USER 1000

# Use shell form to ensure environment variables are expanded
ENTRYPOINT [ "sh", "-c", "python server.py $PORT --directory $DIRECTORY" ]
