# Common List in Docker container

docker build -t lisp .

Run with MondoDB
docker run -it --name lisp -v "$(pwd)/app":/app -p 4005:4005 -p 8080:80 --link mongo:mongo -d lisp

Run with PostgreSQL
docker run -it --name pomodoro -v "$(pwd)/app":/app -e APP_ENV=development -p 4005:4005 -p 8080:80 --link postgres:postgres -d lisp
