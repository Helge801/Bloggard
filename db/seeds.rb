# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random_word_generator'

Author.create name:"Guest"

10.times do |i|
  Author.create name:"#{RandomWordGenerator.word} #{RandomWordGenerator.word}"
end

30.times do |i|
  Blog.create(title:(Array.new(3) {RandomWordGenerator.word}.join(" ")) ,
              sub_title:(Array.new(4) {RandomWordGenerator.word}.join(" ")),
              subject:(Array.new(1) {RandomWordGenerator.word}.join(" ")),
              body:(Array.new([*20..200].sample) {RandomWordGenerator.word}.join(" ")) ,
              author_id:([*2..11].sample)
              )
end

