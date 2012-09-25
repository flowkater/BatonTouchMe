#encoding: UTF-8
class Tester < ActiveRecord::Base
	attr_accessible :mail, :phone, :advtg


	valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :mail, presence: {message: "이메일은 필수입니다!"}, format: {with: valid_email_regex, message: "이메일 형식에 맞지 않아요!"},uniqueness: {case_sensitive: false, message: "이미 등록하신 이메일입니다!"}
end
