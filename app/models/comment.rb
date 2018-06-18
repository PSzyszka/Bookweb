class Comment < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :description, :book_id, :user_id, presence: true
  validates :book_id, uniqueness: { scope: :user_id }
end
