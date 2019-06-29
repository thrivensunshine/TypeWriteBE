class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :sex, :mind
  has_one :prompt
end
