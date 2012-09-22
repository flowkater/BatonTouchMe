class Key < ActiveRecord::Base
	attr_accessible :authkey

	has_many :batons

	# validates :name, presence: true, length: {maximum: 50}
	# valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, presence: true, format: {with: valid_email_regex}, uniqueness: {case_sensitive: false}
	# validates :password, length: {minimum: 6}
end
