# Floppy MCP image

Container wrapper for Floppy's bundled `floppy_mcp` stdio server, exposed as
Streamable HTTP for MCPHub.

The image is rebuilt daily from `ghcr.io/dannyvfilms/floppy:latest` and is
published as `ghcr.io/alexxanddr/floppy-mcp:latest`.

Runtime configuration:

- `FLOPPY_URL`: internal Floppy API base URL, without a trailing slash.
- `FLOPPY_TOKEN`: Floppy API token, injected as a Kubernetes Secret.

The MCP endpoint is `/mcp` on port `3000`.
