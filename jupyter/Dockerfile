FROM python:3.13-bullseye

RUN apt-get update && apt-get install -y swig
    # openjdk-11-jdk

COPY ./requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt --upgrade

WORKDIR /workspace/notebooks

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "--allow-root"]