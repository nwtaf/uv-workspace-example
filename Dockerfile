# Using uv in Docker: https://docs.astral.sh/uv/guides/integration/docker/
FROM ghcr.io/astral-sh/uv:alpine

# Set working directory, create it if it does not exist
WORKDIR /app

# Copy project into the image
COPY . .

# Sync the the project with the virtual environment, using the frozen lockfile
RUN uv sync --frozen

# Activate virtual environment by placing the project's binary at the front of the path
ENV PATH="/app/.venv/bin:$PATH"

# Helthcheck to ensure the application is running correctly
HEALTHCHECK CMD uv healthcheck || exit 1

# Call module or cli when container starts
# ENTRYPOINT [ "python", "-m", "my_app.main"]
CMD ["uv", "run", "hello-world", "--help"]