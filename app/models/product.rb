class Product < ApplicationRecord
    belongs_to :user
    has_one_attached :picture
    has_many :reviews, dependent: :destroy

    def get_average_rating
        Review.get_average_rating(self)
    end
end
