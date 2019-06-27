class PromptSerializer < ActiveModel::Serializer
belongs_to :piece
has_many :characters


  attributes :id, :emotion, :setting, :event, :genre, :timed, :word_count
end
