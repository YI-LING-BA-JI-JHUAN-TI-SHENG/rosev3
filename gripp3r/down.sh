basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ../master
docker-compose down
cd $basedir
docker-compose down
docker-compose rm -f
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
