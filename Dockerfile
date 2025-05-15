# app/Dockerfile

FROM python:3.9-slim

WORKDIR /Genomic-Dashboard

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY . .

# Pin numpy version before installing other dependencies to avoid compatibility issues
RUN pip3 install numpy==1.23.5 && \
    pip3 install -r requirements.txt

EXPOSE 8511

HEALTHCHECK CMD curl --fail http://localhost:8511/_stcore/health

ENTRYPOINT ["streamlit", "run", "Home.py", "--server.port=8511", "--server.address=0.0.0.0"]
