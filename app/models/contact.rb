class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, lenght: { maximum: 48}
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, lenght: { maximum: 256 }
  validates :contact, presence: true, lenght: { maximum: 2000 }
  validates :remote_ip, presence: trueつ
end
