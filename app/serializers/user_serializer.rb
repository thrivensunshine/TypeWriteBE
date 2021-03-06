class UserSerializer < ActiveModel::Serializer
  has_many :pieces
  has_many :groups
  attributes :id, :name, :username, :password_digest, :bio, :avatar, :thoughts
end
