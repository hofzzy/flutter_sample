package infrastructure

import (
	"database/sql"
)

type LikedArticle struct {
	id int
}

func ReadLikedArticleIds(db *sql.DB) *[]int {
	var likedArticleIds []int
	query := `
	SELECT
	  article_id
	FROM
	  article_likes
	WHERE
	  user_id=1
	;
	`
	rows, err := db.Query(query)
	if err != nil {
		panic(err)
	}
	for rows.Next() {
		likedArticle := LikedArticle{}
		err = rows.Scan(&likedArticle.id)
		if err != nil {
			panic(err)
		}
		likedArticleIds = append(likedArticleIds, likedArticle.id)
	}
	rows.Close()
	return &likedArticleIds
}
