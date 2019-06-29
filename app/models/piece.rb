class Piece < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :prompts
end
