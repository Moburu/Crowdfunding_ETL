# Crowdfunding_ETL

First we extract raw crowdfunding data from csv files and make four DataFrames.

To make the Category DataFrame we extracted every unique category for crowdfunding campaigns in our data set, and assigned each of them an identifier.

![category dataframe](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/category_df.PNG?raw=true)

We did the same thing for subcategories as well.

![subcategory dataframe](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/subcategory_df.PNG?raw=true)

For the contact info, all of the data originally was stored as a single column, so we needed to use Pandas to separate this data into four individual columns: ID, first name, last name, and email.

![contact dataframe](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/contact_df.PNG?raw=true)

Finally, for the largest DataFrame, which contains information about all of the campaigns in our data set, we started by removing unnecessary columns, converted certain columns to a proper data type, converted the launch dates and end dates - which originally were Unix timestamps - into an original format, and then merged this DataFrame with out category and subcategory DataFrames in order to affix each campaign with its appropriate category & subcategory IDs.

![campaign dataframe pt1](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_df_part_one.PNG?raw=true)
![campaign dataframe pt2](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_df_part_two.PNG?raw=true)

Then we created an ERD to describe the relationships between these dataframes:
![crowdfunding erc](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/crowdfunding-erd.png?raw=true)

Finally, we created tables for each of these DataFrames in PostgreSQL using a schema based on our ERD, and imported data from the CSV files we created with Pandas.

1. Category

![category table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/category_table.PNG?raw=true)

2. Subcategory

![subcategory table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/subcategory_table.PNG?raw=true)

3. Contact

![contact table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/contact_table.PNG?raw=true)

4. Campaign

![campaign table](https://github.com/Moburu/Crowdfunding_ETL/blob/main/Images/campaign_table.PNG?raw=true)
