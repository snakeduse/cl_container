# Common List in Docker container

docker build -t poms .

docker run -it --name pomodoro -v "$(pwd)/app":/app -p 4005:4005 -d poms
