class Message < ApplicationRecord
  has_many :receipts
  has_many :receivers, through: :receipts

  has_many :inverse_receipts, class_name: "Receipts", foreign_key: "message_id"
  has_many :inverse_receivers, through: :inverse_receipts, source: :message

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
end
