class Publisher < ApplicationRecord
  has_many :genres
  has_many :authors, through: :publishersauthor
  has_many :books

  validates :name, :city, :description, presence: true
end
