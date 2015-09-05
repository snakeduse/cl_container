# Common List in Docker container

docker build -t lisp .

docker run -it --name lisp -v "$(pwd)/app":/app -p 4005:4005 -p 8080:80 --link mongo:mongo -d lisp
