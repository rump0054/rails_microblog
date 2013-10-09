class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, :email => true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
end
