class Order < ApplicationRecord
  belongs_to :user
  belongs_to :reservation
  has_one :residence
end
