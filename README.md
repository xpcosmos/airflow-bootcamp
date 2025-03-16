# Airflow Bootcamp

## Descrição

Este projeto é um bootcamp para aprender e praticar o uso do Apache Airflow, uma plataforma de fluxo de trabalho programável para orquestração de pipelines de dados.

## Estrutura do Projeto

- `dags/`: Contém os DAGs (Directed Acyclic Graphs) do Airflow.
- `plugins/`: Contém plugins personalizados para o Airflow.
- `scripts/`: Scripts auxiliares para configuração e execução do projeto.
- `docker-compose.yml`: Arquivo de configuração do Docker Compose para iniciar o ambiente do Airflow.

## Pré-requisitos

- Docker
- Docker Compose
- Python 3.7> e <3.11

## Instalação

1. Clone o repositório:

    ```sh
    git clone https://github.com/xpcosmos/airflow-bootcamp.git
    cd airflow-bootcamp
    ```

3. Inicie os serviços do Docker Compose:

    ```sh
    docker build -t <nome_da_imagem>:<tag_da_image> .
    ```

4. Inicie os serviços do Docker Compose:

    ```sh
    docker compose up -d
    ```

5. Acesse a interface web do Airflow em `http://localhost:8080`.

## Contribuição

1. Faça um fork do projeto.
2. Crie uma nova branch com sua feature ou correção de bug:

    ```sh
    git checkout -b minha-feature
    ```

3. Faça commit das suas alterações:

    ```sh
    git commit -m 'Minha nova feature'
    ```

4. Envie para o repositório remoto:

    ```sh
    git push origin minha-feature
    ```

5. Abra um Pull Request.
