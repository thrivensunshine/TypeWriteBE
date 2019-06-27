class UserGroupSerializer < ActiveModel::Serializer
belongs_to :user
belongs_to :group

  attributes :id
end
