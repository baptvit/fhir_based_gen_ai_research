# Create the `neo4j.conf` file and specify where plugins are
echo "server.directories.plugins=~/neo4j/plugins" > ~/neo4j/conf/neo4j.conf
# Create that plugins dir and download the latest APOC plugin file
mkdir ~/neo4j/plugins
( cd ~/neo4j/plugins && curl -O -L https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.17/apoc-3.5.0.17-all.jar)
# Re-start the docker container
docker-compose up -d