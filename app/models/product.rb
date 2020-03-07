class Product < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_one_attached :picture
end
