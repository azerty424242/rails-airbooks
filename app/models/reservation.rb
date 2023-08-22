class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :renter, class_name: "User"
  # has_one :owner, through: :book

  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validate :end_date_after_start_date    # (create a private method)
end
