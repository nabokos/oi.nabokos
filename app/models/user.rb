class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nick,  presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :role,  presence: true
end
