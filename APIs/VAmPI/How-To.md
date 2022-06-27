## How to attack the API

A quick rundown of the actions included can be seen in the following table:

|Action |	Path  |	Details |
|:------|:------|:--------|
|GET  | `/createdb`  |Creates and populates the database with dummy data   |
|GET  |	`/`	| VAmPI home  |
|GET  |	`/users/v1` |	Displays all users with basic information |
|GET  |	`/users/v1/_debug`  |  Displays all details for all users |
|POST |	`/users/v1/register`  |	Register new user |
|POST |	`/users/v1/login` |	Login to VAmPI  |
|GET  |	`/users/v1/{username}`  |	Displays user by username |
|DELETE |	`/users/v1/{username}`  |	Deletes user by username (Only Admins)  |
|PUT  |	`/users/v1/{username}/email`  |	Update a single users email |
|PUT  |	`/users/v1/{username}/password` |	Update users password |
|GET  |	`/books/v1` |	Retrieves all books |
|POST |	`/books/v1` |	Add new book  |
|GET  |	`/books/v1/{book}`  |	Retrieves book by title along with secret |

### Create Database

### Display Users

To display the users from the API, use Zap and manually edit the request. The request would look like the one below with the exception of `192.168.1.xxx` being the IP address of 
your host of the VAmPI API.


``` html
GET /users/v1 HTTP/1.1
Host: 192.168.1.xxx:5000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0
Pragma: no-cache
Cache-Control: no-cache
Content-Length: 0
```

### Display Details for ALL Users

### Register New User

### Login to VAmPI

### Display User by Username

### Delete User by Username

### Update a User's Email Address

### Update a User's Password

### Retrieve All "Books"

### Add new "Book"

### Retrive "Book" and Secret by Title
