# X-Request-ID for Gin

Gin middleware that adds `X-Request-ID` header to all request and responses for easy tracking. If `X-Request-ID` header is present on the request the same value will be returned on the response. If it is empty, one will be generated and attached to the response.

[Learn more about X-Request-ID](https://stackoverflow.com/questions/25433258/what-is-the-x-request-id-http-header)

```go

    r := gin.New()
    r.Use(ginrequestid.RequestIDMiddleware)

```
