class Baton < ActiveRecord::Base
	attr_accessible :taskname, :phone, :detail, :address, :date, :time, :wish, :tasknumber

	validates :taskname, :phone, :detail, :address, :date, :wish, presence: true

	has_many :reviews
	belongs_to :key
end
