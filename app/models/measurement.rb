class Measurement < ApplicationRecord

  belongs_to :user #returns a hash of user data
  has_many :patterns # returns an array of pattern hashes

end
