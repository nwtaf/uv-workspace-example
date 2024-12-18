# syntax = docker/dockerfile:1.2

# choose your Python version
ARG PYTHON_VERSION=3.9

FROM python:${PYTHON_VERSION}-bookworm AS builder
COPY --from=ghcr.io/astral-sh/uv:0.5.7 /uv /bin/uv

ENV \
    # do not buffer python output at all
    PYTHONUNBUFFERED=1 \
    # do not write `__pycache__` bytecode
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

COPY . .

RUN uv sync \
        --frozen \
        --compile-bytecode \
        --no-editable \
        --no-dev


FROM python:${PYTHON_VERSION}-bookworm AS runtime

ENV PATH="/app/.venv/bin:$PATH"

COPY --from=builder /app/.venv /app/.venv
COPY --from=builder /app/run.py /app/run.py

WORKDIR /app

ENTRYPOINT [ "python", "run.py"]
