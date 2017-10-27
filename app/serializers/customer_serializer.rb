class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :done

  has_many :frankfurts
end
