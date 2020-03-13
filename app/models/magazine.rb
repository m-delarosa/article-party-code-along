class Magazine < ApplicationRecord
    has_many :articles
    has_many :authors, through: :articles

    def self.find_mags(category)
        if category
            magazines = Magazine.where(category: category)
            #models cannot render, this must be done in the controller
            #refer to what happens in the controller
        else
            Magazine.all
        end
    end
end
