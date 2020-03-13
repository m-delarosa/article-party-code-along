class MagazinesController < ApplicationController
    def index
        magazines = Magazine.find_mags(params[:category])
        render json: magazines, include: [:articles]

        # magazines = Magazine.all
        # render json: magazines, include: [:articles, :authors]
        #if you're only doing one include you don't need an array, but
        # if multiple you need to put it in an array
    end

    def 
end
