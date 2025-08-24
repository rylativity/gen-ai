FROM ghcr.io/astral-sh/uv:bookworm-slim

COPY pyproject.toml uv.lock* ./

RUN uv sync

ENTRYPOINT [ "uv", "run" ]

CMD [ "vllm", "serve", "Qwen/Qwen3-0.6B" ]