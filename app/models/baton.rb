#encoding: UTF-8
class Baton < ActiveRecord::Base
	attr_accessible :taskname, :phone, :detail, :address, :date, :time, :wish, :tasknumber

	validates :taskname, presence: { message: "어떤 일을 맡기실지 입력하셔야되요!" }
	validates :phone, format: {with:/\d{3}-\d{4,}-\d{4,}|\d{3}\d{4,}\d{4,}/, message: "전화번호 형식으로 등록해주세요!"}
	validates	:detail, presence: { message: "세부 사항을 꼭 적어주세요!" }
	validates	:address, presence: { message: "주소를 꼭 입력해주세요!" }
	validates	:date, presence: { message: "날짜가 꼭 필요합니다!" }
	validates	:wish, presence: { message: "WishList를 꼭 골라주세요!" }

	has_many :reviews
	belongs_to :authkey
end
