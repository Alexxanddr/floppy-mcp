FROM ghcr.io/dannyvfilms/floppy:latest

USER root

RUN apt-get update \
    && apt-get install --no-install-recommends -y nodejs npm \
    && npm install --global supergateway \
    && apt-get purge -y --auto-remove npm \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["supergateway"]
CMD ["--stdio", "python -m floppy_mcp.server", "--outputTransport", "streamableHttp", "--host", "0.0.0.0", "--port", "3000", "--streamableHttpPath", "/mcp"]
