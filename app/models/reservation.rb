class Reservation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :address
  belongs_to :category
  belongs_to :status
  belongs_to :user
  has_one_attached :image 
  has_one :order

  validates :image, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 3000, less_than_or_equal_to: 9999999}
  validates :introduction, presence: true
  validates :user, presence: true 
  validates :category_id, numericality: { other_than: 1 , message: "を選択してください"}
  validates :status_id, numericality: { other_than: 1 , message: "を選択してください"} 
  validates :address_id, numericality: { other_than: 1 , message: "を選択してください"} 
end
