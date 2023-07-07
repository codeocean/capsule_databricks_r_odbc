[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>
  
##  DataBricks - R - Data Connector

This tool is designed to create a connection between Code Ocean and your SQL Warehouse in Databricks. 

## Configuration

Please attach your API Credentials to your Code Ocean Account. 

If you have not done so, 

In Databricks 

- Go to User Settings, Access Tokens, Generate a New Token.
- Save this key and secret.

In Code Ocean
- Navigate to the bottom left of icon "Account" on your screen.
- Select User Secrets
- Press Add Secrets
- Add Key and Secret from Databricks. 

Attaching to this Capsule
- In the capsule, press on Environment. 
- Scroll to the bottom. 
- Add Secrets to Capsule.
- Select your Key listed for Databricks. 


## Get Parameter Information from Databricks

In your Databricks account, go to SQL Warehouse. Select your warehouse. Press Connection Details.
Use these as input for this capsule.

- Hostname
- Port 
- HTTPPath

In your Databricks account, go to Data, select the dataset you wish to query, and get "Catalog" name.

- Catalog
      
## Additional Parameters

Related to Authentication (if your settings deviate, please see the attached pdf, otherwise leave as default)

- Thrift Transport
- SSL 
- AuthMech

SQL Query and Nomenclature

- SQL Query
- Output File Name

## Output

a table your SQL query requested in .csv format.

## Help

If your authentication settings should deviate from this capsule. Alongside the README you will find a pdf with instructions for tailoring the capsule to your needs.

## Source

https://docs.databricks.com/integrations/jdbc-odbc-bi.html#odbc-linux

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)