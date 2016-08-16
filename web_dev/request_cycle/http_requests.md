RELEASE 0 QUESTIONS:

2. What are some common HTTP status codes?
	200 OK - request has succeeded.
	300 Multiple Choices - requested resource has different choices
		and cannot be resolved into one
	301 Moved Permanently - requested resource has been assigned
		to a new permanent URI
	302 Found - requested resource resides temporarily under a
		different URI
	304 Not Modified - if client has performed a conditional GET
		request and access is allowed, but the document has not
		been modified, the server should respond with this status
		code
	307 Temporary Redirect - requested resource resides temporarily
		under a different URI
	400 Bad Request - bad syntax
	401 Unauthorized - request requires user authentication
	403 Forbidden - server understands request, but will not fulfill
	404 Not Found - server could not find matching request - URI
	500 Internal Server Error - server encountered an unexpected condition
	which prevented it from fulfilling the request

3. What is the difference between a GET request and a POST request? When might each be used?
	GET is used to retrieve remote data, and POST is used to insert/update 		remote data.
	Use GET for safe actions and POST for unsafe actions, because GET requests can get cached, remain in the browser history, shared, and hacked.

4. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	A cookie is a small text file that is stored on your computer's 
	browser. They are plain text and does not have executeable code. They are designed to remember stateful information or remember user's browsing activity. When the server receives an HTTP request, the server sends a header called Set-Cookie. 