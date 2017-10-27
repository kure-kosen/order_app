class Customer < ApplicationRecord
  has_many :frankfurts
  accepts_nested_attributes_for :frankfurts
end
