class Message < ApplicationRecord
  has_many :receipts
  has_many :receivers, through: :receipts

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
end
