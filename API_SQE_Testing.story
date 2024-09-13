Description: SQE MP API Testing Sample

Scenario: Verify that allows creating a User
Given request body: {"id": 11,"username": "Vasya111","firstName": "string","lastName": "string","email": "string","password": "12345","phone": "string","userStatus": 0}
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user`
Then response code is equal to `200`

Scenario: Verify that allows login as a User
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/login?username=Vasya111&password=12345`
Then response code is equal to `200`

Scenario: Verify that allows log out User
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/logout`
Then response code is equal to `200`

Scenario: Verify that allows creating the list of Users
Given request body: [{"id": 0,"username": "Pavlo","firstName": "string","lastName": "string","email": "string","password": "123457","phone": "string","userStatus": 0},{"id": 0,"username": "Petro","firstName": "string","lastName": "string","email": "string","password": "123456","phone": "string","userStatus": 0}]
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user/createWithList`
Then response code is equal to `200`

Scenario: Verify that allows creating a pet
Given request body: {"id": 1,"category": {"id": 0,"name": "dog"},"name": "dog1","photoUrls": ["https://storage-api.petstory.ru/d4/8a/ff/d48affbedd2c415a8ccfb72b2b7a8292.jpeg"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet`
Then response code is equal to `200`

Scenario: Verify that allows updating Pet’s image
Given request body: {"id": 0,"category": {"id": 0,"name": "string"},"name": "doggie","photoUrls": ["https://storage-api.petstory.ru/d4/8a/ff/d48affbedd2c415a8ccfb72b2b7a8292.jpeg"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP PUT request for resource with URL `https://petstore.swagger.io/v2/pet`
Then response code is equal to `200`

Scenario: Verify that allows updating Pet’s name and status
Given request body: {"id": 0,"category": {"id": 0,"name": "string"},"name": "bug","photoUrls": ["https://storage-api.petstory.ru/d4/8a/ff/d48affbedd2c415a8ccfb72b2b7a8292.jpeg"],"tags": [{"id": 0,"name": "string"}],"status": "bought"}
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP PUT request for resource with URL `https://petstore.swagger.io/v2/pet`
Then response code is equal to `200`

Scenario: Verify that allows deleting Pet
Given request body: {"id":11,"category": {"id": 0,"name": "dog"},"name": "dog1","photoUrls": ["https://storage-api.petstory.ru/d4/8a/ff/d48affbedd2c415a8ccfb72b2b7a8292.jpeg"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
When I set request headers:
|name                 |value                          |
|Content-Type         |application/json; charset=UTF-8|
When I execute HTTP DELETE request for resource with URL `https://petstore.swagger.io/v2/pet/1`
Then response code is equal to `200`
