# CoreSentiment: Data Pipeline with Apache Airflow
This project showcases a **data pipeline** that orchestrates the data ingestion, processing, storage, and analysis of Wikipedia pageview counts using **Apache Airflow**. The goal is to support **CoreSentiment**, a stock market prediction tool that analyzes Wikipedia pageviews to infer market sentiment.

## Project Overview
The hypothesis behind CoreSentiment is that an increase in a company's Wikipedia page views correlates with a positive market sentiment and an expected stock price increase, while a decrease in views suggests negative sentiment.

In this first iteration, **the data pipeline is designed to**:

* Download Wikipedia pageview data for one hour on a specific date in October 2024.

* Focus on five companies: Amazon, Apple, Facebook, Google, and Microsoft.
Extract the relevant pageview counts.

* Load the processed data into a database.

* Perform a simple analysis to identify the company with the highest pageviews.

## Steps to Reproduce
* **Docker Setup**: Ensure Docker Desktop is running on your machine.

* **Clone the Repository**: 

`git clone <repository-url>`

`cd <repository-folder>`

* **Start Airflow**: Run the following command to launch the Airflow services:

`docker-compose up -d`

* **Access Airflow UI**: Once the services are up, visit the Airflow web interface on your browser (typically accessible at http://localhost:8080).

* **Run the DAG**: Trigger the DAG from the Airflow UI to execute the data pipeline.

## Data Pipeline Details
* **Ingestion**: Wikipedia pageview data for one hour (4pm on October 10th, 2024) is downloaded in a gzip format.

* **Processing**: The pageview data is extracted and filtered to focus on the five selected companies.

* **Storage**: The processed data is loaded into a relational database (e.g., Postgres).

* **Analysis**: A simple SQL query is executed to determine which company had the highest pageviews during the selected hour.

## Conclusion
This project is part of a capstone aimed at solidifying knowledge in data pipeline orchestration using **Apache Airflow**. The solution demonstrates how Airflow can be leveraged to automate data workflows, providing a scalable and maintainable system for future iterations of the CoreSentiment tool.

## Future Enhancements
Potential improvements could include:

* Expanding the pipeline to process data for multiple time periods.

* Enhancing the sentiment analysis by integrating other data sources.

* Automating stock price predictions based on the pageview trends.

## License
This project is licensed under the MIT License.