FROM golang:latest
MAINTAINER blue "ruinwcn@gmail.com"
ENV GO_FILE_PATH /mnt
WORKDIR ${GO_FILE_PATH}/ruinw/gocase
ADD . ${GO_FILE_PATH}/ruinw/gocase
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go mod tidy
RUN go build
EXPOSE 8000
CMD ["go", "run", "main.go"]