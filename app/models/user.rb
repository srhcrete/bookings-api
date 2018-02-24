class User < ApplicationRecord
  has_many :bands, dependent: :destroy
  has_many :hosts, dependent: :destroy

  validates_presence_of :email, :password
end
