class PublishersAuthor < ApplicationRecord
  belongs_to :publisher
  belongs_to :author
end
