==============================================================

################# PART - 1 ###################################

Container is not up due to the reason error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
----> Used docker logs command to find this reason

Create the gencsv.sh file and mounted it to the respective path so that it will be available inside the container

Again ran the container in the background using the docker run command with '-d' option

----> docker run -d -v $(pwd)/inputfile:/csvserver/inputdata -p 127.0.0.1:9393:9300/tcp --env CSVSERVER_BORDER=orange infracloudio/csvserver

===============================================================

################## PART -2 ####################################

Written a docker-compose.yaml file and used docker compose up command

===============================================================

################## PART - 3 ###################################

Update the docker-compose.yaml file in part-2 with the prometheus

Configured prometheus to listen on port 9300 to collect data of the application
