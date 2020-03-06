class Product < ApplicationRecord
    belongs_to :user, dependant: :destroy
end
