# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  first_name      :string
#  last_name       :string
#  email           :string           not null
#  location        :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  ### circle back: do password_digest and session_token need to be
  ### included in validations?
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :first_name, :last_name, length: { maximum: 30 }
  validates :location, length: { maximum: 50 }
  before_validation :ensure_session_token, :parse_email

  attr_reader :password

  has_one_attached :photo
  has_many :boards
  has_many :pins
  has_many :boards_pins,
    through: :boards,
    source: :boards_pins

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest) == password
  end

  def reset_session_token!
    self.update!(session_token: generate_session_token)
    self.session_token
  end

  private
  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def parse_email
    self.username ||= self.email.split("@")[0]
  end

end
