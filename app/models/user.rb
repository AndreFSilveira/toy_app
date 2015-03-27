class User < ActiveRecord::Base
	has_many :microposts
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :name, presence: true
	validates :name, uniqueness: true
end
