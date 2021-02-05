# stunnel-alpine
Create a simple docker image to run stunnel.

Set environment variable `ACCEPT` to the tcp port for
stunnel to listen on, and set the environment variable
`CONNECT` to the ip:port you want stunnel to connect to.

For example, to create a stunnel connection listening on the
redis port and connecting to a host named redis.example.com 
on port 21993 you could do:

  docker run --name redis-stunnel -d -e ACCEPT=6379 -e CONNECT=redis.example.com:21993 technologix/stunnel-alpine
