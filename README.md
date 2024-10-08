# ONPK-2024-Toman

Semestralna praca

BUILD DOCKEROV
docker build -t appfrontend .
docker build -t appbackend .

SPUSTENIE DOCKEROV
docker run --rm -it -p8080:8080 appfrontend
docker run --rm -it appbackend 