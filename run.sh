# ex: ./run.sh <repo_dir> <binary>

docker build -t valgrind42-img .
# docker run -e BIN_FILE=$2 -v $1:/root/repo -it  valgrind42-img 
docker run -e "TERM=xterm-256color" -e BIN_FILE=$2 -v $(find $PWD -type d -name $(basename $1)):/root/repo -it valgrind42-img 