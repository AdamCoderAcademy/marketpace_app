class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products, dependent: :destroy
  has_many :reviews, through: :products

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
