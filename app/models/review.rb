class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user


  def self.get_average_rating(product)
    reviews = Review.select(:rating).where(product_id: product.id)
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    return 0 if sum == 0
    rating = (sum.to_f / reviews.length).round(2)
    return rating
  end
end
