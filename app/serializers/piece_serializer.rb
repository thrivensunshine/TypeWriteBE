class PieceSerializer < ActiveModel::Serializer
belongs_to :user


  attributes :id, :body, :note, :likes, :bookmarked


end
