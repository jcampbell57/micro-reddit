class Post < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true

  has_many :comments, dependent: :destroy
  belongs_to :user
end
