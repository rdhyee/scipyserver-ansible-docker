set -e
docker build -t rdhyee/scipyserver-ansible .
PORT=${1:-8888}
docker run -d  -v `pwd`:/notebooks -p $PORT:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/scipyserver-ansible
