
#docker build -t registrytzs2899.azurecr.io/poi:0.0.1 -f Dockerfile_3_POI .
# Build and push image from a Dockerfile
# https://docs.microsoft.com/en-us/azure/container-registry/container-registry-quickstart-task-cli#build-and-push-image-from-a-dockerfile

az login

az acr build --image tripviewer:v0.0.1 --registry registrytzs2899 --file Dockerfile_0_tripviewer .
az acr build --image user-java:v0.0.1 --registry registrytzs2899 --file Dockerfile_1_UserJava .
az acr build --image userprofile:v0.0.1 --registry registrytzs2899 --file Dockerfile_2_UserProfile .
az acr build --image poi:v0.0.1 --registry registrytzs2899 --file Dockerfile_3_POI .
az acr build --image trips:v0.0.1 --registry registrytzs2899 --file Dockerfile_4_trips .