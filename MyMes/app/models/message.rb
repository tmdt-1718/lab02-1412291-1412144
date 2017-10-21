class Message < ApplicationRecord
  has_many :receipts
  has_many :receivers, through: :receipts
end
