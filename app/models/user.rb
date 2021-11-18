class User < ApplicationRecor
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :foods, dependent: :destroy
end
