class PieceSerializer < ActiveModel::Serializer
  attributes :id, :body, :note, :likes, :bookmarked, :timed, :word_count, :character, :phrase, :setting, :genre, :emotion, :topic, :incase
  has_one :user
end
