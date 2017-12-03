Cloud Computing Assignment 
Ira Javier
C15362901

IPADD: http://35.205.234.34/

All my tests are in the restfulapi-test.sh -> these commands will run the different methods [GET,POST,PATCH,DELETE]

To run it from the manager virtual machine
>type python container-server.py

GET
> To see the containers/images, go to the external ip address with port 8080 with [/containers], [/images], etc.

DELETE images/containers
>open a new terminal and 
>type curl -s -X DELETE -H 'Content-Type: application/json' http://localhost:8080/images/72d1e9189d7b
>The same logic applies to PATCH and POST.
