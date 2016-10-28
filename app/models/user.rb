class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable
    has_many :messages
    
    validates :email, uniqueness: true
    validates :nick, presence: true
end