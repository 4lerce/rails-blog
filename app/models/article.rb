class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 4, maximum: 30 }
  validates :body, presence: true, length: { minimum: 4 }
end
