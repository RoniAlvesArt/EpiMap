![EpiMap-logo](https://raw.githubusercontent.com/BIA-lab/patho-track/main/img/caminho.png)

# EpiMap

**EN**  
EpiMap is a Minimum Viable Product (MVP) developed as part of the course NAP802 – Entrepreneurship at the Federal University of Minas Gerais (UFMG). It is an intelligent platform designed for mapping and preventing epidemics and pandemics, with a focus on infectious diseases.

**PT-BR**  
EpiMap é um MVP (Produto Mínimo Viável) desenvolvido como parte da disciplina NAP802 – Empreendedorismo, na Universidade Federal de Minas Gerais (UFMG). Trata-se de uma plataforma inteligente voltada para o mapeamento e a prevenção de epidemias e pandemias, com foco em doenças infectocontagiosas.

# REFAZER ESSA PARTE ANTIGA ABAIXO E DEIXAR REFERÊNCIA

# Patho Track Repository

This repository aims to serve as a base to future works on genomic and epidemiological dashboards

## Feeding the dashboard with metadata

Create your metadata based on the the structure of [data/template_metadata.csv](data/template_metadata.csv) and save as `./data/<pathogen>/metadata.csv`
For example, if you are working with Dengue, save your metadata on data/dengue/metadata.csv

## How to setup and run the dashboard:

1. Make sure you have Docker installed. For more information access: https://docs.docker.com/engine/install/
2. Open the terminal (comand line) inside the folder where the dockerfile is located.
3. Build the image: `docker build -t genomic-dashboard .`
4. Run the Docker container: `docker run -p 8511:8511 --name genomic-dashboard -d genomic-dashboard .` 
5. You can view your Dashboard in your browser URL: http://0.0.0.0:8511

## Tutorials

### VEME Pathogen Dashboards - DENV-1 Dashboard

In this workshop we show how to use VIPR database and Genome Detective to generate a DENV-1 dataset from Dengue in Africa, and how to build a dashboard with the Dengue data using the Patho Track Framework.


## Reference
<br>
Xavier, J.S., Moir, M., Tegally, H. et al. SARS-CoV-2 Africa dashboard for real-time COVID-19 information. Nat Microbiol 8, 1–4 (2023). <a href='https://doi.org/10.1038/s41564-022-01276-9'>https://doi.org/10.1038/s41564-022-01276-9</a>. 

## Contact Us
<br>
If you have any question please get in touch with us through the following e-mail address: 

- <a> joicy.xavier@ufvjm.edu.br </a>
- <a> joicy@sun.ac.za </a>
