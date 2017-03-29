set -e
docker build -t rdhyee/scipyserver-ansible-docker .
PORT=${1:-8888}
# -e "PASSWORD=$IPN_PW_DEFAULT"
docker run -d  -v `pwd`:/home/jovyan/work -p $PORT:8888 -e GEN_CERT=yes rdhyee/scipyserver-ansible-docker \
   start-notebook.sh --NotebookApp.password='sha1:cfc5f75e0905:e91ef06bf1229ab9a0941b5c0d97bf2417f63902'
