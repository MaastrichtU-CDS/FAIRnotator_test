docker run -it --rm ^
   -v %cd%/FAIRnotator1000.csv:/FAIRnotator1000.csv ^
   -v %cd%/output.ttl:/output.ttl ^
   -v %cd%/ontology.owl:/ontology.owl ^
   -v %cd%/triplifier.properties:/triplifier.properties ^
   ghcr.io/maastrichtu-cds/triplifier:latest