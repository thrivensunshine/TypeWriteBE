class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :liked
  has_one :user
  has_one :piece
end
