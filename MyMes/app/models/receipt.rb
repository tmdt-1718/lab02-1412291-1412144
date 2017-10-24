class Receipt < ApplicationRecord
  belongs_to :massage, optional: true
end
