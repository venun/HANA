SET SCHEMA TA_DEMO;

DROP FULLTEXT INDEX REVIEW_IDX;

CREATE FULLTEXT INDEX REVIEW_IDX ON "REVIEW"(CONTENT) FAST PREPROCESS OFF
LANGUAGE DETECTION ('EN', 'FR') TEXT ANALYSIS ON
CONFIGURATION 'ta_demo::fine_tune.hdbtextconfig';
