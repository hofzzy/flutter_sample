package infrastructure

import (
	"database/sql"
)

type Article struct {
	Id         int
	Title      string
	Body       string
	LikedCount int
}

func ReadArticleAll(db *sql.DB) *[]Article {
	var articles []Article
	query := `
	SELECT
		a.id, a.title, a.body, COUNT(l.id)
	FROM
		article a
	LEFT OUTER JOIN
		article_likes l
	ON
		a.id = l.article_id
	GROUP BY
		a.id
	;
	`
	rows, err := db.Query(query)
	if err != nil {
		panic(err)
	}
	for rows.Next() {
		article := Article{}
		err = rows.Scan(&article.Id, &article.Title, &article.Body, &article.LikedCount)
		if err != nil {
			panic(err)
		}
		articles = append(articles, article)
	}
	rows.Close()
	return &articles
}
