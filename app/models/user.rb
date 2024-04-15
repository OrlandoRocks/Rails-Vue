class User < ApplicationRecord
  belongs_to :role

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            length: { maximum: 255 }

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }

  def admin?
    role.name == 'admin'
  end
end
