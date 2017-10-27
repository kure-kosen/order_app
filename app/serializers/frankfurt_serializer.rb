class FrankfurtSerializer < ActiveModel::Serializer
  attributes :id, :ketchup, :mustard

  belongs_to :customer
end
