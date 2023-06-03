class User < ApplicationRecord
  rolify :before_add => :before_add_method
  # rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
       has_many :addcarts
       has_many :products
end
