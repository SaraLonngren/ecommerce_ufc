class Category < ApplicationRecord
  validates :name, :description, presence: true
  validates :name, uniqueness: true

  def to_s
    name
  end
end
