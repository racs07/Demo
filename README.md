# Demo

Steps to run: 

1. Create your dynamo db with entries mentioned in src/main/resources/testData.csv
2. place your Dynamo Db name, access key and secret key in src/main/resources/local.properties

Postman collection 

first-flow : demo-dynamo-query
curl --location --request GET 'http://localhost:8081/v1/dynamo/0001'

second flow: demo-dynamo-getbatchitem
curl --location --request POST 'http://localhost:8081/v1/dynamo' \
--header 'Content-Type: application/json' \
--data-raw '{
    "studentId":["0001","0002"],
    "subjectCode":"02"
}'