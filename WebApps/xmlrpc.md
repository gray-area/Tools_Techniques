## XML-RPC

```html
POST /xmlrpc.php HTTP/1.1
Host: example.com
Content-Length: 135

<?xml version="1.0" encoding="utf-8"?> 
<methodCall> 
<methodName>system.listMethods</methodName> 
<params></params> 
</methodCall>
```
