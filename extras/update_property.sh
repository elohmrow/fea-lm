#!/bin/bash

curl -X POST -u superuser:superuser --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
    "properties":[ \ 
       { \ 
          "name":"country", \ 
          "type":"String", \ 
          "multiple":false, \ 
          "values":[ \ 
             "China" \ 
          ] \ 
       } \ 
    ] \ 
 }' 'http://localhost:8080/magnoliaAuthor/.rest/nodes/v1/contacts/vvangogh'
