class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_one_attached :image

  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :image, presence: true
end
