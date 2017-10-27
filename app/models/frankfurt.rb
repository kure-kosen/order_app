class Frankfurt < ApplicationRecord
  belongs_to :customer

  validates :ketchup,
            :mustard,
            inclusion: [true, false]
end
