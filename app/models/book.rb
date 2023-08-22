class Book < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reservations

  has_one_attached :cover
end
