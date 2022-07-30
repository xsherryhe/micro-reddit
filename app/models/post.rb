class Post < ApplicationRecord
  validates :title, presence: { message: 'cannot be blank' },
                    length: { maximum: 50 }
  validates :link_url, presence: { message: 'cannot be blank' },
                       format: { with: /\Ahttps?:\/\//,
                                 message: 'must be a valid URL' }
  belongs_to :user
end
