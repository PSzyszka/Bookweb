  class Genre < ApplicationRecord
  has_many :books
  has_many :publishers

  validates :name, presence: true
end
