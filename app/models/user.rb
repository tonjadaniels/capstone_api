class User < ApplicationRecord
  has_secure_password
  
  has_many :measurements # return of measurements

end
