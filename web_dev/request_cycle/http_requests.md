# Release 0

_What are some common HTTP status codes?_
- 200 OK (standard response for successful requests)
- 404 Not Found
- 403 Forbidden
- 500 Internal Server Error
- 503 Service Unavailable
- 504 Gateway Time-out

_What is the difference between a GET request and a POST request? When might each be used?_
- The main difference between these 2 requests is that a GET request asks for data from a specific resource whereas a POST request submits data to a specific resource.
- GET requests are used to display a website's homepage (e.g., when you enter a url into your browser's navigation bar, it sends a GET request to that website's servers)
- POST requests are used to upload images, files, text, etc. to a website (e.g., filling out a form for a user profile on a website will POST that data to the website's servers)

_What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?_
- A cookie is a piece of data sent to a user's web browser from a server
    + The browser may store the cookie and include it in the next request to the same server
- Cookies relate to HTTP requests because they can be part of an HTTP request
    + Their inclusion in requests allows users to stay logged in and save preferences (amongst other things)

