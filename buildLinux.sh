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
