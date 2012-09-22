class Baton < ActiveRecord::Base
	attr_accessible :taskname, :phone, :detail, :address, :date, :time, :wish

	validates :taskname, :phone, :detail, :address, :date, :time, presence: true
end
