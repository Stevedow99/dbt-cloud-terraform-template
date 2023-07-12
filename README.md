# dbt Cloud Terraform Modules and Templates

This repository contains a collection of Terraform modules and templates that facilitate the deployment and management of your dbt Cloud account. The modules abstract away much of the complexity involved in managing dbt Cloud resources via Terraform.

## Repository Structure

- `modules/`: This directory contains the Terraform modules for creating various resources in dbt Cloud:
    - **`connections/`** - This sections contains modules for connecting data warehouses and repositories to dbt Cloud
        - **`bigquery/`** - A module for making a connection between a dbt Cloud project and a BigQuery Instance
        - **`github_app_repo/`** - A module for making a connection between a dbt Cloud project and a GitHub App Connection
        - **`snowflake/`** - A module for making a connection between a dbt Cloud project and a BigQuery Instance
    - **`environments/`** - This sections contains modules for creating dbt Cloud environments
        - **`bigquery_environment/`** - A module for creating dbt Cloud environments that connect to BigQuery
        - **`snowflake_environment/`** - A module for creating dbt Cloud environments that connect to Snowflake

</br>

- `deployment_templates/`: Here, you can find example usages of the modules. These examples should help you understand how to use the modules in your own Terraform configurations.
    - **`dbtcloud_projects/`** - A terraform project example for managing dbt Cloud account level configurations (e.g. groups and permissions)
        - **`bigquery_project/`** - A terraform project example for deploying and managing a dbt Cloud project that connects to BigQuery (this is includes connection at the account level and the environment level)
        - **`snowflake_project/`** - A terraform project example for deploying and managing a dbt Cloud project that connects to Snowflake (this is includes connection at the account level and the environment level)
    - **`dbtcloud_account_mgmt/`** - A terraform project example for managing dbt Cloud account level configurations (e.g. groups and permissions)



## Requirements

- [Terraform](https://www.terraform.io/downloads.html) 0.13.x or later
- A [dbt Cloud account](https://www.getdbt.com/product/what-is-dbt/)

## Contributing

I welcome contributions from the community. If you'd like to add a new module or improve an existing one, please open a pull request.

## Support

If you encounter any issues or have any questions, please open an issue. I'll do our best to respond in a timely manner.