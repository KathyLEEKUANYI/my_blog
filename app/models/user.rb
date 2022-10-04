class User < ApplicationRecord

  validates :email, presence: true,
            uniqueness: true
  validates :password, 
            presence: true, 
            length: { minimum: 6 },
            confirmation: true


  before_save :encrypt_password
  
  private

  def encrypt_password
    pw = "xx-#{self.password}-yy"
    self.password = Digest::SHA1.hexdigest(pw)
  end  
               
end
