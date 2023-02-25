package main

import (
	"flag"
	"fmt"
	"github.com/masssun/flutter_sample/infrastructure"
	"google.golang.org/grpc/reflection"
	"log"
	"net"

	"google.golang.org/grpc"

	"github.com/masssun/flutter_sample/service"
)

var (
	port = flag.Int("port", 8080, "The server port")
)

func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	db := infrastructure.ConnectDB()
	defer db.Close()

	s := grpc.NewServer()
	reflection.Register(s)

	service.NewArticleService(*db).Register(s)

	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
