# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  skyper      :string(255)
#  email       :string(255)
#  dateofbirth :datetime
#  roles       :integer
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :name, :skyper, :email, :dateofbirth, :roles,:status,:password, :password_confirmation
    has_secure_password
    has_many :user_attend_projects
    belongs_to :staff
     before_save { self.email.downcase! }
     before_save :create_remember_token
   validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    validates :password_confirmation, presence: true,length: { minimum: 6 }
    validates_associated :user_attend_projects, :staff
 private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
