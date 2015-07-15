class MapSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :field, :created_at, :updated_at
  has_one :creator
end
