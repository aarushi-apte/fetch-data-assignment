# Fetch Rewards Coding Exercise: Data Analytics #

### Files in the repository: ###
* A png and pdf file containing the new designed relational data model.
* fetch_test_queries.sql : SQL file containing the queries for the given questions.
* Data Insights : File containing the insights I would convey to the non-technical stakeholders.

### Relational Data Model ###

* The 4 tables, each, have the fields along with the respective Primary Key and Foreign Key in them (PK, FK).
* The brands table had a field 'related_brands' which contained multiple colon separated values depciting the ids of the various brands which were related to the brand purchased. Since it would be difficult to query these values and get insights from them, I created a separate table called 'related_brands', using a Python script, which contains the entries of each of the brands scanned and their respective related brand ids.
* A cross reference table is also generated between receipt_items and brands.

### Insights on the Data ###

* The pdf has a list of pointers and graphs which could help us convey to the non-technical stakeholders information about the data and the shopper behviour trends.
