FROM python:3.12-bullseye

RUN apt-get update && apt-get install -y swig && pip install uv \
    #install rust/cargo
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    # openjdk-11-jdk

# COPY ./requirements.txt .
COPY pyproject.toml uv.lock ./

RUN --mount=type=cache,target=/root/.cache uv sync

WORKDIR /workspace/notebooks

CMD ["uv", "run", "jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "--allow-root"]