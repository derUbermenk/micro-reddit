class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       length: { in: 1..20 }

  has_many :posts
  has_many :comments
end
