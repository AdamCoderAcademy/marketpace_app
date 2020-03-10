class Product < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_one_attached :picture
    has_many :reviews

    def get_average_rating
        Review.get_average_rating(self)
    end
end
