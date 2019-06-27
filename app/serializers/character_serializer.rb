class CharacterSerializer < ActiveModel::Serializer
belongs_to :prompt

  attributes :id, :name, :age, :bio, :quirk, :mood
end
