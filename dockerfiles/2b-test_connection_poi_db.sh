# To test the connection between poi and db
docker run --network openhack -p 80:80 -e SQL_USER=SA -e SQL_PASSWORD=Passw0rd -e SQL_SERVER=sql1 -e SQL_DBNAME=mydrivingDB -e ASPNETCORE_ENVIRONMENT=Local registrytzs2899.azurecr.io/poi:0.0.1