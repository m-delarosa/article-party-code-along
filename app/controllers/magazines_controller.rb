class MagazinesController < ApplicationController
    def index
        if params[:category]
            magazines = Magazine.where(category: params[:category])
            render json: magazines, include: [:articles, :authors]
        else
            magazines = Magazine.all
            render json: magazines, include: [:articles, :authors]
        end
        # magazines = Magazine.all
        # render json: magazines, include: [:articles, :authors]
        #if you're only doing one include you don't need an array, but
        # if multiple you need to put it in an array
    end

    def show
        magazine = Magazine.find(params[:id])
        render json: magazine
    end

    def create
        magazine = Magazine.create(name: params[:name], category: params[:category])
        render json: magazine
    end

    def update
        magazine = Magazine.find(id: params[:id])
        magazine.update(name: params[:name], category: params[:category])
        render json: magazine
    end

    def destroy
        magazine = Magazine.find(params[:id])
        magazine.destroy

        render json: {message: "Magazine deleted sucessfully"}
    end
end
