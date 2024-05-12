# Crowdfunding_ETL

First we extract raw crowdfunding data from csv files and make four DataFrames.

1. Category
![category dataframe](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/category_df.PNG?raw=true)

2. Subcategory
![subcategory dataframe](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/subcategory_df.PNG?raw=true)

3. Contact

4. Campaign
![campaign dataframe pt1](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_df_part_one.PNG?raw=true)
![campaign dataframe pt2](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_df_part_two.PNG?raw=true)

Then we created an ERD to describe the relationships between these dataframes:
![crowdfunding erc](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/crowdfunding-erd.png?raw=true)

Finally, we created tables for each of these DataFrames in PostgreSQL:

1. Category
![category table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/category_table.PNG?raw=true)

2. Subcategory
![subcategory table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/subcategory_table.PNG?raw=true)

3. Contact
![contact table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/contact_table.PNG?raw=true)

4. Campaign
![campaign table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_table.PNG?raw=true)
