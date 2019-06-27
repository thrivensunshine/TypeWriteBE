class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :pieces
  has_many :comments, through: :pieces
end
