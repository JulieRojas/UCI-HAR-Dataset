---
title: "README.md"
author: "Ju"
date: "6/1/2020"
output:
  html_document: default
  pdf_document: default
---

The additional files for the analysis of the UCI HAR Dataset are:

- run_analysis.R
- CodeBook.md
- Dataset_formatted.txt
- Mean_dataset.txt


## run_analysis.R

The R script run_analysis.R merge the train and test set together and add the column activity (y_train and y_test) that correspond to the sport practiced.
It also cleaned up the column names and save this dataset as Dataset_formatted.txt. Finally run_analysis create a new table that gives the average of each variable for each activity and each subject and save it as Mean_dataset.txt.

## CodeBook.md

The CodeBook describes the coe executed in run_analysis.R

## Dataset_formatted.txt

Dataset_formatted.txt regroup all the features mean and standard deviation as well as the activity practices during these measurement.

The columns correspond to the mean and standart deviation for each feature recorded by the device during the activity. The activity column indicates with sprot was paracticed during these measurement. Further informations on each feature are provided in the original README.txt file. The column names were simplified and are listed below with their indices:

1	tbodyaccmeanx,
2	tbodyaccmeany,
3	tbodyaccmeanz,
4	tbodyaccstdx,
5	tbodyaccstdy,
6	tbodyaccstdz,
7	tgravityaccmeanx,
8	tgravityaccmeany,
9	tgravityaccmeanz,
10	tgravityaccstdx,
11	tgravityaccstdy,
12	tgravityaccstdz,
13	tbodyaccjerkmeanx,
14	tbodyaccjerkmeany,
15	tbodyaccjerkmeanz,
16	tbodyaccjerkstdx,
17	tbodyaccjerkstdy,
18	tbodyaccjerkstdz,
19	tbodygyromeanx,
20	tbodygyromeany,
21	tbodygyromeanz,
22	tbodygyrostdx,
23	tbodygyrostdy,
24	tbodygyrostdz,
25	tbodygyrojerkmeanx,
26	tbodygyrojerkmeany,
27	tbodygyrojerkmeanz,
28	tbodygyrojerkstdx,
29	tbodygyrojerkstdy,
30	tbodygyrojerkstdz,
31	tbodyaccmagmean,
32	tbodyaccmagstd,
33	tgravityaccmagmean,
34	tgravityaccmagstd,
35	tbodyaccjerkmagmean,
36	tbodyaccjerkmagstd,
37	tbodygyromagmean,
38	tbodygyromagstd,
39	tbodygyrojerkmagmean,
40	tbodygyrojerkmagstd,
41	fbodyaccmeanx,
42	fbodyaccmeany,
43	fbodyaccmeanz,
44	fbodyaccstdx,
45	fbodyaccstdy,
46	fbodyaccstdz,
47	fbodyaccjerkmeanx,
48	fbodyaccjerkmeany,
49	fbodyaccjerkmeanz,
50	fbodyaccjerkstdx,
51	fbodyaccjerkstdy,
52	fbodyaccjerkstdz,
53	fbodygyromeanx,
54	fbodygyromeany,
55	fbodygyromeanz,
56	fbodygyrostdx,
57	fbodygyrostdy,
58	fbodygyrostdz,
59	fbodyaccmagmean,
60	fbodyaccmagstd,
61	fbodyaccjerkmagmean,
62	fbodyaccjerkmagstd,
63	fbodygyromagmean,
64	fbodygyromagstd,
65	fbodygyrojerkmagmean,
66	fbodygyrojerkmagstd,
67	angletbodyaccmeangravity,
68	angletbodyaccjerkmeangravitymean,
69	angletbodygyromeangravitymean,
70	angletbodygyrojerkmeangravitymean,
71	anglexgravitymean,
72	angleygravitymean,
73	anglezgravitymean,
74	activity

## Mean_dataset.txt

The Mean_dataset.txt gives the average of each variables of the Dataset_formatted.txt table for each activity and each subject. The columns are named as below with their indices:

1 activity,
2	subject,
3	tbodyaccmeanx,
4	tbodyaccmeany,
5	tbodyaccmeanz,
6	tbodyaccstdx,
7	tbodyaccstdy,
8	tbodyaccstdz,
9	tgravityaccmeanx,
10	tgravityaccmeany,
11	tgravityaccmeanz,
12	tgravityaccstdx,
13	tgravityaccstdy,
14	tgravityaccstdz,
15	tbodyaccjerkmeanx,
16	tbodyaccjerkmeany,
17	tbodyaccjerkmeanz,
18	tbodyaccjerkstdx,
19	tbodyaccjerkstdy,
20	tbodyaccjerkstdz,
21	tbodygyromeanx,
22	tbodygyromeany,
23	tbodygyromeanz,
24	tbodygyrostdx,
25	tbodygyrostdy,
26	tbodygyrostdz,
27	tbodygyrojerkmeanx,
28	tbodygyrojerkmeany,
29	tbodygyrojerkmeanz,
30	tbodygyrojerkstdx,
31	tbodygyrojerkstdy,
32	tbodygyrojerkstdz,
33	tbodyaccmagmean,
34	tbodyaccmagstd,
35	tgravityaccmagmean,
36	tgravityaccmagstd,
37	tbodyaccjerkmagmean,
38	tbodyaccjerkmagstd,
39	tbodygyromagmean,
40	tbodygyromagstd,
41	tbodygyrojerkmagmean,
42	tbodygyrojerkmagstd,
43	fbodyaccmeanx,
44	fbodyaccmeany,
45	fbodyaccmeanz,
46	fbodyaccstdx,
47	fbodyaccstdy,
48	fbodyaccstdz,
49	fbodyaccjerkmeanx,
50	fbodyaccjerkmeany,
51	fbodyaccjerkmeanz,
52	fbodyaccjerkstdx,
53	fbodyaccjerkstdy,
54	fbodyaccjerkstdz,
55	fbodygyromeanx,
56	fbodygyromeany,
57	fbodygyromeanz,
58	fbodygyrostdx,
59	fbodygyrostdy,
60	fbodygyrostdz,
61	fbodyaccmagmean,
62	fbodyaccmagstd,
63	fbodyaccjerkmagmean,
64	fbodyaccjerkmagstd,
65	fbodygyromagmean,
66	fbodygyromagstd,
67	fbodygyrojerkmagmean,
68	fbodygyrojerkmagstd,
69	angletbodyaccmeangravity,
70	angletbodyaccjerkmeangravitymean,
71	angletbodygyromeangravitymean,
72	angletbodygyrojerkmeangravitymean,
73	anglexgravitymean,
74	angleygravitymean,
75	anglezgravitymean