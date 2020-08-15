class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  ALLOWED_EMAILS = %w[
    lhumphreys@suesd.org
  ].freeze

  validates :email, inclusion: { in: ALLOWED_EMAILS, message: :invalid }
end
