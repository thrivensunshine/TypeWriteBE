class Prompt < ApplicationRecord
  belongs_to :piece
  has_many :characters
end
