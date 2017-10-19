class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { small: "64x64", med: "100x100", large: "300x300" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
