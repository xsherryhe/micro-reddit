class User < ApplicationRecord
  validates :username, presence: { message: 'cannot be blank' }, 
                       uniqueness: { message: 'cannot be taken' }, 
                       length: { maximum: 20 }
  validates :password, presence: true,
                       length: { in: 6..20 },
                       format: { without: /\s/,
                                 message: 'cannot contain spaces' },
                       format: { with: /.*[a-z].*/, 
                                 message: 'must contain at least 1 lowercase letter' },
                       format: { with: /.*[A-Z].*/,
                                 message: 'must contain at least 1 uppercase letter' },
                       format: { with: /.*\d.*/,
                                 message: 'must contain at least 1 digit' },
                       format: { with: /.*[^\w].*/,
                                 message: 'must contain at least 1 symbol' }
  has_many :posts
end
