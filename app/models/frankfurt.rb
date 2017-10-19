class Frankfurt < ApplicationRecord
  belongs_to :customer

  validates :ketchup,
            :mustard,
            presence: true
end
