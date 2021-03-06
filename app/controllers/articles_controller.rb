class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        render json: @articles
    end

    def show
        article = Article.find(params[:id])
        render json: article
    end

    def create
        new_article = Article.create(
            title: params[:title], 
            author_id: params[:author],
            magazine_id: params[:magazine]
        )

        # render json: Article.all
        redirect_to "http://localhost:3001/showAuthor.html?id=#{new_article.author_id}"
    end

    def update
        article = Article.find(params[:id])
        article.update(title: params[:title], author_id: params[:author], magazine_id: params[:magazine] )
        render json: article
    end

    def destroy
        article = Article.find(params[:id])
        article.destroy

        render json: Article.all
    end
end
