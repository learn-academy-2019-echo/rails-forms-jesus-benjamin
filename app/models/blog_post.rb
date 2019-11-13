class BlogPost < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 2}
  validates :content, presence: true, length: { minimum: 10}
end
