package service

import (
	"context"
	"database/sql"
	"github.com/masssun/flutter_sample/infrastructure"
	"strconv"

	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "github.com/masssun/flutter_sample/proto_generated"
)

type ArticleService struct {
	db *sql.DB
	pb.UnimplementedArticleServiceServer
}

func NewArticleService(db sql.DB) *ArticleService {
	return &ArticleService{
		db: &db,
	}
}

func (s *ArticleService) Register(server *grpc.Server) {
	pb.RegisterArticleServiceServer(server, s)
}

func (s *ArticleService) ListArticles(ctx context.Context, req *pb.ListArticlesRequest) (*pb.ListArticlesResponse, error) {
	articleAll := infrastructure.ReadArticleAll(s.db)
	likedArticleIds := infrastructure.ReadLikedArticleIds(s.db)
	var articles []*pb.Article
	for _, article := range *articleAll {
		a := pb.Article{
			Id:         strconv.Itoa(article.Id),
			Title:      article.Title,
			Body:       article.Body,
			LikedCount: int32(article.LikedCount),
			Liked:      contains(*likedArticleIds, article.Id),
		}
		articles = append(articles, &a)
	}
	return &pb.ListArticlesResponse{
		Articles: articles,
	}, nil
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

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}
