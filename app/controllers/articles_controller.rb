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
            author: params[:author],
            magazine: params[:magazine]
        )

        render json: new_article
    end
end
