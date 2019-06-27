class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :piece


  attributes :id, :body, :liked
end
