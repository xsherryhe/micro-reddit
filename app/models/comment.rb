class Comment < ApplicationRecord
  validates :body, presence: { message: 'cannot be blank' }
  belongs_to :post
  belongs_to :user
end
