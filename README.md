# Exploring Anecdotal Patient Experience of Cancer Treatments
Gauri Dandi, Emma Brown-Carley, Shraeya Srinivasan, Sarah Wessel, Martina Radoslavov

## Abstract
The goal of this project was to understand how patient drug reviews differ for drugs in the UCI Drug Review Dataset and the Drug Sensitivity in Cancer Dataset depending on several factors and explore the relationship and connections between them in a Graph Database created in Neo4j. In this way, we aimed to develop thoughtful questions and model interesting trends to provide insight into patient drug reviews regarding condition treatments. The consideration of patient drug reviews is essential in assessing all the factors that contribute to the efficacy of a drug. Understanding the patient experience of a drug outside of a laboratory tested environment can provide insight into its effect on the general public. With our graph database, we are able to explore the patient reviews and identify whether underlying scientific elements of these drugs lead to improved patient experiences. From a pharmaceutical perspective, pharmaceutical scientists could benefit from using this database to identify what drug strategies and targets are most effective. Identifying all these factors will help further improve the patient experience of pharmaceutical therapies.

## Included Files
* [Data Cleaning/data_cleaning.ipynb](https://github.com/gdandi04/DrugSensitivityReviews/blob/main/Data%20Cleaning/data_cleaning.ipynb)
	* Initial data munging and cleaning of raw datasets
* [Data Cleaning/create_views.sql](https://github.com/gdandi04/DrugSensitivityReviews/blob/main/Data%20Cleaning/create_views.sql)
	* SQL file containing reformatting of cleaned CSV files into aggregated views

## References
* Drug Reviews Dataset: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Drug+Review+Dataset+%28Drugs.com%29)
* Cancer Drug Pathways Dataset: [GDSC Bulk Download](https://www.cancerrxgene.org/downloads/bulk_download)
