#build the image
cd ./9.6/

docker build -t postgres .

docker run --name postgres -it -a stdout -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres postgres