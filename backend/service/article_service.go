package service

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "github.com/masssun/flutter_sample/proto_generated"
)

type ArticleService struct {
	pb.UnimplementedArticleServiceServer
}

func SayHello() {
	println("hello!")
}

func NewArticleService() *ArticleService {
	return &ArticleService{}
}

func (s *ArticleService) Register(server *grpc.Server) {
	pb.RegisterArticleServiceServer(server, s)
}

func (s *ArticleService) ListArticles(ctx context.Context, req *pb.ListArticlesRequest) (*pb.ListArticlesResponse, error) {
	return nil, status.Error(codes.Unimplemented, "unimplemented")
}

func (s *ArticleService) GetArticle(ctx context.Context, req *pb.GetArticleRequest) (*pb.GetArticleResponse, error) {
	return nil, status.Error(codes.Unimplemented, "unimplemented")
}

func (s *ArticleService) ListLikedArticles(ctx context.Context, req *pb.ListLikedArticlesRequest) (*pb.ListLikedArticlesResponse, error) {
	return nil, status.Error(codes.Unimplemented, "unimplemented")
}

func (s *ArticleService) LikeArticle(ctx context.Context, req *pb.LikeArticleRequest) (*pb.LikeArticleResponse, error) {
	return nil, status.Error(codes.Unimplemented, "unimplemented")
}

func (s *ArticleService) mustEmbedUnimplementedArticleServiceServer() {
	return
}
