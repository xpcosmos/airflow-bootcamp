import os
from airflow import DAG
from datetime import datetime
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator

AIRFLOW_HOME = "/opt/airflow"



YELLOW_TIP_URL = 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2022-01.parquet'
LOOKUP_TABLE = 'https://d37ci6vzurychx.cloudfront.net/misc/taxi_zone_lookup.csv'

dag =  DAG(dag_id="inserir_data_gcp",
        description="Baixa dados de site",
        catchup=False,
        start_date=datetime(2024,10,26))

echoo = BashOperator(
        task_id='echoo',
        bash_command='echo "iniciando working"',
        dag=dag
    )

download_yellow_tip = BashOperator(
        task_id='download_yellow_tip',
        bash_command=f'curl --location --output {AIRFLOW_HOME}/yellow_tip.parquet {YELLOW_TIP_URL}',
        dag=dag
    )

download_lookup_table = BashOperator(
        task_id='download_lookup_table',
        bash_command=f'curl --location --output {AIRFLOW_HOME}/lookup_table.csv {LOOKUP_TABLE}',
        dag=dag
    )

ls_active = PythonOperator(
        task_id='ls_active',
        python_callable=os.listdir,
        dag=dag
    )

echoo >> [download_lookup_table, download_yellow_tip] >> ls_active