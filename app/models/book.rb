class Book < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reservations, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  has_one_attached :cover
end
