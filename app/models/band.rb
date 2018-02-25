class Band < ApplicationRecord
  #model association
  belongs_to :user

  #validations
  validates_presence_of :name, :location
end
