FROM ghcr.io/dannyvfilms/floppy:latest

USER root

RUN apk add --no-cache nodejs npm \
    && npm install --global supergateway \
    && npm cache clean --force

USER 1000:1000

ENTRYPOINT ["supergateway"]
CMD ["--stdio", "python -m floppy_mcp.server", "--outputTransport", "streamableHttp", "--host", "0.0.0.0", "--port", "3000", "--streamableHttpPath", "/mcp"]
