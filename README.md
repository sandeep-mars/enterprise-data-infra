Situation: Manual setup of cloud environments used to take 48 hours and often had mistakes.
Task: Automate the entire deployment of a secure Data Lake and Databricks environment.
Action: I architected a modular Terraform framework to deploy Azure resources automatically.
Result: Reduced setup time by 94% (from 2 days to 1 hour) with 100% consistency

Cloud: Azure IaC: Terraform  
Storage: Azure Data Lake Gen2 (ADLS)

Project Structure
/modules: Reusable cloud components
main.tf: The main automation script you see above
