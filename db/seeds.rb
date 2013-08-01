# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Category.create!(name: 'Notícias')
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')

Article.destroy_all
100.times do |n|
  Article.create!(title: "Lorem #{n}", category: Category.all.sample,body: 'Mussum Ipsum Mahaba luds',summary: 'Ipsum')
end