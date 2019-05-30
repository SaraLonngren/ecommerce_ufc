class Category < ApplicationRecord
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  has_many :products
  def to_s
    name
  end
end
