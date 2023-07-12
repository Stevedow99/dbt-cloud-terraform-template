<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dbtcloud"></a> [dbtcloud](#requirement\_dbtcloud) | 0.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dbtcloud"></a> [dbtcloud](#provider\_dbtcloud) | 0.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dbtcloud_bigquery_connection.bigquery_credential](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/bigquery_connection) | resource |
| [dbtcloud_project_connection.bigquery_connection](https://registry.terraform.io/providers/dbt-labs/dbtcloud/0.2.2/docs/resources/project_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_provider_x509_cert_url"></a> [auth\_provider\_x509\_cert\_url](#input\_auth\_provider\_x509\_cert\_url) | Auth Provider X509 Cert URL for the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_auth_uri"></a> [auth\_uri](#input\_auth\_uri) | Auth URI for the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_bigquery_connection_name"></a> [bigquery\_connection\_name](#input\_bigquery\_connection\_name) | The name of the connection to bigquery in dbt Cloud | `string` | n/a | yes |
| <a name="input_client_email"></a> [client\_email](#input\_client\_email) | Service Account email to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client ID of the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_client_x509_cert_url"></a> [client\_x509\_cert\_url](#input\_client\_x509\_cert\_url) | Client X509 Cert URL for the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_dataproc_cluster_name"></a> [dataproc\_cluster\_name](#input\_dataproc\_cluster\_name) | Dataproc cluster name for PySpark workloads triggered by dbt Cloud | `string` | `null` | no |
| <a name="input_dataproc_region"></a> [dataproc\_region](#input\_dataproc\_region) | Google Cloud region for PySpark workloads on Dataproc triggered by dbt Cloud | `string` | `null` | no |
| <a name="input_dbt_cloud_project_id"></a> [dbt\_cloud\_project\_id](#input\_dbt\_cloud\_project\_id) | The dbt Cloud project ID to create the connection in | `number` | n/a | yes |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | GCP project ID that dbt Cloud will connect to | `string` | n/a | yes |
| <a name="input_gcs_bucket"></a> [gcs\_bucket](#input\_gcs\_bucket) | URI for a Google Cloud Storage bucket to host Python code executed via Dataproc | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location to create new Datasets in | `string` | `null` | no |
| <a name="input_maximum_bytes_billed"></a> [maximum\_bytes\_billed](#input\_maximum\_bytes\_billed) | Max number of bytes that can be billed for a given BigQuery query | `number` | `null` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Private key of the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_private_key_id"></a> [private\_key\_id](#input\_private\_key\_id) | Private key ID of the Service Account to connect to dbt Cloud | `string` | n/a | yes |
| <a name="input_retries"></a> [retries](#input\_retries) | Number of retries for queries | `number` | `null` | no |
| <a name="input_timeout_seconds"></a> [timeout\_seconds](#input\_timeout\_seconds) | Timeout in seconds for queries run by dbt Cloud | `number` | n/a | yes |
| <a name="input_token_uri"></a> [token\_uri](#input\_token\_uri) | Token URI for the Service Account to connect to dbt Cloud | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->