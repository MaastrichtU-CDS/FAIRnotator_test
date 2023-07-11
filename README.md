# FAIRnotator_test
This repository contains mock datasets and sparql queries to test and benchmark the performance of the different components and tasks of the FAIRnotator. The test are described in the article (link wil follow) on the FAIRnotator tooling, **the data used for the performance description can be found in the FAIRnotator_test_results.pdf file.**

The tests were performed with a graphdb triple store initiated from a docker container, the dataset and other requirements are described in the batch script and in the triplifier properties file. The batch script initiates a second docker container running the [triplier tool](https://github.com/MaastrichtU-CDS/triplifier) that converts the dataset to rdf triples and stores them in the graphdb triple store.

sparql queries:
- query 1 inserts a variable mapping
- query 2 inserts a value mapping
- query 3 deletes the variable mapping
- query 4 deletes the value mapping

These 4 queries mimic the tasks performed by domain experts in the FAIRnotator tooling. Annotating variables and values from their dataset to ontology classes from a common/core data model. 

| Rows | Run triplifier | | Annotate variable query | | Annotate value query | | Delete variable mapping | | Delete value mapping |
|---|---|---|---|---|---|---|---|---|---|
|   | Mean (sec) | SD (sec) | Mean (sec) | SD (sec) | Mean (sec) | SD (sec) | Mean (sec) | SD (sec) | Mean (sec) | SD (sec) |
| 10 | 4.92 | 0.11 | 0.10 | 0.00 | 0.10 | 0.00 | 0.82 | 0.04 | 0.30 | 0.00 |
| 50 | 9.58 | 0.77 | 0.10 | 0.00 | 0.10 | 0.00 | 1.00 | 0.00 | 1.02 | 0.04 |
| 100 | 14.12 | 1.39 | 0.10 | 0.00 | 0.10 | 0.00 | 5.84 | 0.25 | 1.62 | 0.13 |
| 500 | 46.54 | 3.24 | 0.10 | 0.00 | 0.10 | 0.00 | 29.80 | 1.64 | 7.70 | 0.19 |
| 1000 | 81.44 | 7.88 | 0.10 | 0.00 | 0.20 | 0.00 | 59.00 | 1.58 | 15.40 | 0.55 |
