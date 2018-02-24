class Host < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :location
end
