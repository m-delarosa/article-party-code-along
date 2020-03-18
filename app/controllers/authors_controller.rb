class AuthorsController < ApplicationController
    def index
        authors = Author.all
        render json: authors
    end

    def show
        author = Author.find(params[:id])
        render json: author, include: :articles
    end

    def create
        author = Author.create(
            name: params[:name], 
            age: params[:age]
        )

        render json: {message: "Author added sucessfully"}
        # render json: author
        # render json: author && "Author added sucessfully"
        #This only shows the message for a split second and then shows the data added. author && 
    end

    def update
        author = Author.find(params[:id])
        author.update(name: params[:name], age: params[:age])

        render json: author
    end

    def destroy
        author = Author.find(params[:id])
        author.destroy

        render json: {message: "Author deleted sucessfully"}
    end
end
