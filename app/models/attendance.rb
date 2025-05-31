class Attendance < ApplicationRecord
  belongs_to :vendor
  belongs_to :market

  validates :date, presence: true
  validates :vendor_id, uniqueness: { scope: [:market_id, :date], message: "has already been marked present for this market on that date" }
end
