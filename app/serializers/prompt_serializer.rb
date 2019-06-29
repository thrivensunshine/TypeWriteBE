class PromptSerializer < ActiveModel::Serializer
  attributes :id, :character, :phrase, :setting, :genre, :emotion, :topic, :incase, :timed, :wordcount
end
