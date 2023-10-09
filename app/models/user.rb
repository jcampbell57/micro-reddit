class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..20 }
  validates :password, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
