# docker-commander
## Install
```
go get -u github.com/amothic/docker-commander
```
## Usage
```
$ docker-commander /app --param "abc"
["/app","--param","abc"]
```

```
$ docker run --rm ghcr.io/amothic/docker-commander:latest /app --param "abc"
["/app","--param","abc"]
```
