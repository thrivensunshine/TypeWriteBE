class UserSerializer < ActiveModel::Serializer
  has_many :groups
  has_many :pieces
  

  attributes :id, :name, :user_name, :password, :avatar, :bio, :thoughts


end
