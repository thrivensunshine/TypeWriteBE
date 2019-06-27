class Piece < ApplicationRecord
  belongs_to :user
  has_many :characters
end
