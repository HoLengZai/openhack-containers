# Some informations : 
# => Dockerfile_1 : Trip Viewer WebApp (.NET Core )  web application to review their driving scores and trips.
# => Dockerfile_4 : Trip API : Go mobile application sends the vehicle's on-board diagnostics (OBD) trip data to this API to be stored.
# => Dockerfile_3 : Points of Interest API (.NET Core) API is used to collect the points of the trip when a hard stop or hard acceleration was detected.
# => Dockerfile_2 : User Profile API (NodeJS) API is used by the application to read the user's profile information.
# => DOCKERFILE 0  : User API ( Java )   API is used by the application to create and modify the users. 


# Create Docker network 
docker network create openhack

# Create SQL SERVER Container
docker pull mcr.microsoft.com/mssql/server:2017-latest

docker run --network openhack -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Passw0rd" \
   --name sql1 -h sql1 \
   -d \
   mcr.microsoft.com/mssql/server:2017-latest

docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "Passw0rd" \
   -Q 'CREATE DATABASE mydrivingDB;'

docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "Passw0rd" \
   -Q 'SELECT Name from sys.Databases;'
   
# /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "Passw0rd"
docker run --network openhack -e SQLFQDN=sql1 -e SQLUSER=SA -e SQLPASS=Passw0rd -e SQLDB=mydrivingDB openhack/data-load:v1


