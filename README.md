# FAIRnotator_test
This repository contains mock datasets and sparql queries to test and benchmark the performance of the different components and tasks of the FAIRnotator.  

The tests were performed with a graphdb triple store initiated from a docker container, the dataset and other requirements are described in the batch script and in the triplifier properties file. The batch script initiates a second docker container running the [triplier tool](https://github.com/MaastrichtU-CDS/triplifier) that converts the dataset to rdf triples and stores them in the graphdb triple store.

sparql queries:
- query 1 inserts a variable mapping
- query 2 inserts a value mapping
- query 3 deletes the variable mapping
- query 4 deletes the value mapping

These 4 queries mimic the tasks performed by domain experts in the FAIRnotator tooling. Annotating variables and values from their dataset to ontology classes from a common/core data model. 
