class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :books, foreign_key: :owner_id
  has_many :reservations, foreign_key: :renter_id
  has_many :bookmarks, dependent: :destroy

  has_one_attached :avatar
end
