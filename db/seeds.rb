# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Category.destroy_all
#Category.create!(name: 'Notícias')
#Category.create!(name: 'Esportes')
#Category.create!(name: 'Entretenimento')

#Article.destroy_all
#100.times do |n|
#  Article.create!(title: "Lorem #{n}", category: Category.all.sample,body: 'Mussum Ipsum Mahaba luds',summary: 'Ipsum')
#end

#Category.destroy_all
#Category.create!(name: 'Notícias')
#Category.create!(name: 'Esportes')
#Category.create!(name: 'Entretenimento')

#Article.destroy_all

#Category.all.each do |category|

#  10.times do |n|
#    file_path = Rails.root.join('fixtures', category.simple, '*.jpg').to_s
#
#    article = Article.create! do |article|
#      article.picture      = Image.create_upload(upload_name: 'picture', file: File.open(Dir[file_path].sample), imageable_type: 'Article')
#      article.title        = Faker::Lorem.sentence
#      article.summary      = Faker::Lorem.paragraph
#      article.published_at = Time.now
#      article.body         = Faker::Lorem.paragraphs(10).join("\n\n")
#      article.category     = category
#    end
#  end
#
#  category.articles.first.update!(featured: true)
#end

Article.where(featured: false).first.update(featured_at_home: true)