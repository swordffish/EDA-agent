# OpenROAD EDA MCP Server

An MCP Server that wraps `docker exec` calls to enable Claude Code to operate EDA tools inside an `openroad/orfs` Docker container.

## Quick Start

1. Start the persistent container:
   ```bash
   docker run -d --name orfs-agent \
     -v $(pwd)/design:/workspace \
     openroad/orfs:latest sleep infinity
   ```

2. Install dependencies and run:
   ```bash
   npm install
   npm start
   ```

## Tools Provided

- `yosys` — Synthesis and logic optimization
- `openroad` — Place and route
- `openroad_shell` — Interactive OpenROAD shell
