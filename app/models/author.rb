class Author < ApplicationRecord
    has_many :articles
    has_many :magazines, through: :articles
end
