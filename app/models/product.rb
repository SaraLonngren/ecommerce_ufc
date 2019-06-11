class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :category_id, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true

  has_one_attached :image

  def to_s
    name
  end
end
