USE final_project;

# gdsc table
SELECT * FROM gdsc;

# drug review table
SELECT * FROM drugreviews;

# view of drug reviews with
# drug name, condition, average rating of the drug for that condition, total usefullness score
CREATE VIEW drug_reviews AS
	SELECT drugName, conditionName, avg(rating) as avg_rating, count(*) as num_reviews, sum(usefullness) as usefullness
	FROM drugreviews
	WHERE drugName IN (
		SELECT DRUG_NAME FROM gdsc
	)
	GROUP BY drugName, conditionName
	ORDER BY drugName;

# view of gdsc data with drug name, pathway name, putative target, 
# average AUC, RMSE, and Z-score for drug & pathway
# grouped by drug name, pathway name, and target
CREATE VIEW gdsc_view AS
	SELECT DRUG_NAME, PATHWAY_NAME, PUTATIVE_TARGET, avg(AUC), avg(RMSE), avg(Z_SCORE) FROM gdsc
	GROUP BY DRUG_NAME, PATHWAY_NAME, PUTATIVE_TARGET;

# join gdsc view and drug reviews view into one view (236 rows)
CREATE VIEW merged AS
	SELECT * FROM drug_reviews
	INNER JOIN gdsc_view
	ON drug_reviews.drugName = gdsc_view.DRUG_NAME;

# final view
SELECT * FROM merged;
