class User < ApplicationRecord
  has_many :exhibits
  has_many :museums, through: :exhibits

  validates :username, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.username = auth["info"]["name"]
      user.uid = auth["uid"]
      user.email = auth["info"]["email"]
      user.password_digest = SecureRandom.uuid
    end
  end

end
