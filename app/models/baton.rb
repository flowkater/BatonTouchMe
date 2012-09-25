#encoding: UTF-8
class Baton < ActiveRecord::Base
	default_scope order: 'created_at DESC'
	scope :daniel, where(runner_id:1) 
	scope :casa, where(runner_id:2) 
	scope :hulk, where(runner_id:3) 
	scope :think, where(runner_id:4) 
	scope :anyone, where(runner_id:0)

	scope :ready, where(status_id:0)
	scope :progress, where(status_id:1)
	scope :done, where(status_id:2)

	attr_accessible :taskname, :phone, :detail, :address, :date, :time, :wish, :status_id, :runner_id

	validates :taskname, presence: { message: "어떤 일을 맡기실지 입력하셔야되요!" }
	validates :phone, format: {with:/\d{3}-\d{4,}-\d{4,}|\d{3}\d{4,}\d{4,}/, message: "전화번호 형식으로 등록해주세요!"}
	validates	:detail, presence: { message: "세부 사항을 꼭 적어주세요!" }
	validates	:address, presence: { message: "주소를 꼭 입력해주세요!" }
	validates	:date, presence: { message: "날짜가 꼭 필요합니다!" }
	validates	:wish, presence: { message: "WishList를 꼭 골라주세요!" }

	has_many :reviews
	belongs_to :authkey
end
