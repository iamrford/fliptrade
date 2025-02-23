class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, presence: true, uniqueness: true
  has_many :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
