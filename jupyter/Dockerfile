FROM python:3.10-bullseye

RUN apt-get update && apt-get install -y swig && pip install uv
    # openjdk-11-jdk

# COPY ./requirements.txt .

WORKDIR /workspace

COPY pyproject.toml uv.lock ./

RUN --mount=type=cache,target=/root/.cache uv sync \
    && uv run spacy download en_core_web_sm && uv run spacy download en_core_web_md

CMD ["uv", "run", "jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "--allow-root"]