class Post < ApplicationRecord
  belongs_to :user
  validates :if, presence: true
  validates :then, presence: true
end
