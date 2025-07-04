# Generated by https://smithery.ai. See: https://smithery.ai/docs/build/project-config
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY pyproject.toml run_server.py uv.lock README.md ./

# Install dependencies
RUN pip install --no-cache-dir .

# Default command for stdio transport
CMD ["python", "run_server.py", "--http-only"]