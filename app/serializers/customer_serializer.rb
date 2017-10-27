class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :done, :created_at

  has_many :frankfurts
end
