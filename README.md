
Build HelloWorld webapp container:
docker build -t hello-world-tomcat:latest .

Run it:
docker run --rm -p 8080:8080 hello-world-tomcat:latest

The webapp is reachable at:
curl http://localhost:8080/HelloWorld/