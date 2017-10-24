class Receipt < ApplicationRecord
  belongs_to :message, optional: true
  belongs_to :receiver, class_name: "Message"
end
