# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_key = ["#1a","#2b","#3c","#4d"]
user_value = ["el","sa","lk","ll"]
gen = ["7","8","9"]

(0..3).each do |i|
    (1..25).each do |a|
       first = Authkey.new(authkey: user_key[i] + gen[0] + a.to_s + user_value[i],genkeys: "")
        (1..5).each do |b|
           second = Authkey.new(authkey: user_key[i] + gen[1] + b.to_s + user_value[i] + a.to_s,genkeys: "")
           first.genkeys = first.genkeys + second.authkey + " "
           first.save!
            (1..3).each do |c|
               third = Authkey.create!(authkey: user_key[i] + gen[2] + c.to_s + user_value[i] + a.to_s + b.to_s, genkeys: "")
               second.genkeys = second.genkeys + third.authkey + " "
               second.save!
            end
        end
    end
end