class User < ApplicationRecord
  before_save :set_case
  # before_save :set_slug

  has_secure_password

  validates :name, presence: true

  validates :email, format: { with: /\S+@\S+/ }, uniqueness: {case_sensitive: false}

  validates :username, format: { with: /\A[A-Z0-9]+\z/i }, uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8, allow_blank: true }

  scope :by_name, -> { order(:username)}
  scope :not_admin, -> { by_name.where(admin: false)}

  private
  def set_case
    self.username = username.downcase
    self.name = name.capitalize
  end

  # def set_slug
  #   self.slug = username.parameterize
  # end
end
