#GET ALL CONTAINERS

echo /containers
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers | python -mjson.tool


#GET CONTAINER STATE

echo /containers?state=running
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers?state=running | python -mjson.tool

#GET ALL IMAGES

echo /images
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/images | python -mjson.tool

#GET CONTAINER ID

echo /containers/<id>
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers/75e41d966c0e | python -mjson.tool

#GET CONTAINER ID LOGS

echo /containers/<id>/logs
curl -s -X GET -H 'Accept: application/json' http://localhost:8080/containers/75e41d966c0e/logs | python -mjson.tool

#DELETE A SPECIFIC IMAGE USING IMAGE ID

echo /images/<id>
curl -s -X DELETE -H 'Content-Type: application/json' http://localhost:8080/images/72d1e9189d7b


#DELETE A SPECIFIC CONTAINER  USING CONTAINER ID

echo /containers/<id>
curl -s -X DELETE -H 'Content-Type: application/json' http://localhost:8080/containers/75e41d966c0e


#DELETE ALL CONTAINERS

curl -s -X DELETE -H 'Content-Type: application/json' http://localhost:8080/containers

#DELETE ALL IMAGES

curl -s -X DELETE -H 'Content-Type: application/json' http://localhost:8080/images

#POST CONTAINERS

curl -X POST -H 'Content-Type: application/json' http://localhost:8080/containers -d '{"image": "myimage"}'

#POST IMAGES

curl -H 'Accept: application/json' -F file=@Dockerfile http://localhost:8080/images
curl -H 'Accept: application/json' -F file=@dockerfiles/whale-say.Dockerfile http://localhost:8080/images

#PATCH A SPECIFIC CONTAINER : STATE ; RUNNING OR STOPPED

curl -X PATCH -H 'Content-Type: application/json' http://localhost:8080/containers/75e41d966c0e -d '{"state": "running"}'
curl -X PATCH -H 'Content-Type: application/json' http://localhost:8080/containers/75e41d966c0e -d '{"state": "stopped"}'

#PATCH A SPECIFIC IMAGE : EG; TAG 

curl -s -X PATCH -H 'Content-Type: application/json' http://localhost:8080/images/72d1e9189d7b -d '{"tag": "test:1.0"}'



