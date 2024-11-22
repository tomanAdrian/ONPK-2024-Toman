# ONPK-2024-Toman

Semestralna praca

BUILD DOCKEROV
docker build -t appfrontend:1.0.0 .
docker build -t appbackend:1.0.0 .

SPUSTENIE DOCKEROV
docker run --rm -it -p8080:8080 appfrontend:1.0.0
docker run --rm -it appbackend:1.0.0
