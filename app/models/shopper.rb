class Shopper < ApplicationRecord

  has_many :orders
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :address,  presence: true
  validates :city,  presence: true, length: { maximum: 15 }
  validates :state,  presence: true, length: { maximum: 2}
  validates :zip,  presence: true, length: { is: 5 }
  validates :card_number,  presence: true, length: { is: 16 }
  validates :expiration_month,  presence: true, length: { maximum: 10 }
  validates :expiration_year,  presence: true, length: { is: 4 }
  validates :cvv,  presence: true, length: { is: 3 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  
  validates :password, presence: true, length: { minimum: 5 }




end
