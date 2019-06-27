class GroupSerializer < ActiveModel::Serializer
    has_many :user_groups

  attributes :id, :name, :photo, :digit, :extra
end
