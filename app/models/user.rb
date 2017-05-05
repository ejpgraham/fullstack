class User < ApplicationRecord
  validates :password, length: {minimum: 8, allow_nil: true}
  validates :session_token, :username, uniqueness:  true
  validates :username, :session_token, :password_digest, presence: true

  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_user_by_credentials(username, password)
    user = User.find_by_username(username)
    return user if user && user.password_is?(password)
    nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def password_is?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
