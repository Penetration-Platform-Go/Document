# Document

## Build

**mac**
```sh
cd ~/go/src/github.com/Penetration-Platform-Go/Mysql-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Mysql-Service/Mysql-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/MongoDB-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/MongoDB-Service/MongoDB-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/User-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/User-Service/User-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Auth-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Auth-Service/Auth-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Project-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Project-Service/Project-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Admin-Service/
go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Admin-Service/Admin-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin
```

**linux**
```sh
cd ~/go/src/github.com/Penetration-Platform-Go/Mysql-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Mysql-Service/Mysql-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/MongoDB-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/MongoDB-Service/MongoDB-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/User-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/User-Service/User-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Auth-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Auth-Service/Auth-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Project-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Project-Service/Project-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Admin-Service/
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .
mv ~/go/src/github.com/Penetration-Platform-Go/Admin-Service/Admin-Service ~/go/src/github.com/Penetration-Platform-Go/Document/bin

cd ~/go/src/github.com/Penetration-Platform-Go/Document/bin
tar -czf bin.tar *
```

## RUN

```sh
mkdir out
nohup ./Admin-Service > ./out/Admin-Service.out 2>&1 &
nohup ./Auth-Service  > ./out/Auth-Service.out 2>&1 &
nohup ./MongoDB-Service > ./out/MongoDB-Service.out 2>&1 &
nohup ./Mysql-Service > ./out/Mysql-Service.out 2>&1 &
nohup ./Project-Service > ./out/Project-Service.out 2>&1 &
nohup ./User-Service > ./out/User-Service.out 2>&1 &
```

## STOP

```sh
lsof -i :8000 | grep -v "PID" | awk '{print $2}' | xargs kill
lsof -i :8001 | grep -v "PID" | awk '{print $2}' | xargs kill
lsof -i :8002 | grep -v "PID" | awk '{print $2}' | xargs kill
lsof -i :8003 | grep -v "PID" | awk '{print $2}' | xargs kill
lsof -i :8082 | grep -v "PID" | awk '{print $2}' | xargs kill
lsof -i :8083 | grep -v "PID" | awk '{print $2}' | xargs kill
rm -rf out
```