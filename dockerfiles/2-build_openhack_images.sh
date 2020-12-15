#docker build -t registrytzs2899.azurecr.io/poi:0.1 Dockerfile_3_POI 

# Build Dockerfile_0_tripviewer :
docker build -t registrytzs2899.azurecr.io/tripviewer:0.0.1 -f Dockerfile_0_tripviewer .
# Build Dockerfile_1_UserJava 
docker build -t registrytzs2899.azurecr.io/UserJava:0.0.1  -f Dockerfile_1_UserJava .
# Build Dockerfile_2_UserProfile 
docker build -t registrytzs2899.azurecr.io/UserProfile:0.0.1 -f Dockerfile_2_UserProfile .
# Build Dockerfile_3_POI
docker build -t registrytzs2899.azurecr.io/poi:0.0.1 -f Dockerfile_3_POI .
# Build Dockerfile_4_trips 
docker build -t registrytzs2899.azurecr.io/trips:0.0.1  -f Dockerfile_4_trips .
