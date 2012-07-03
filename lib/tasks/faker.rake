namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    require 'faker'
    Rake::Task['db:reset'].invoke
    
    # Create 50 Fake Users
    User.create!(name: "Example User",
                 email: "example@bookofjack.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    100.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@bookofjack.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    # Create 25 Fake Articles
    100.times do |c|
      article = Article.create!(
        :article_id => rand(100-1) + 1, 
        :position => rand(100-1) + 1, 
        :title => Faker::Lorem.sentence(word_count = 3), 
        :intro => Faker::Lorem.paragraph(sentence_count = 5), 
        :sec1 => Faker::Lorem.paragraph(sentence_count = 10), 
        :sec2 => Faker::Lorem.paragraph(sentence_count = 10), 
        :sec3 => Faker::Lorem.paragraph(sentence_count = 10), 
        :footnotes => Faker::Lorem.paragraph(sentence_count = 5), 
        :published_at => (rand(30-1)+1).days.ago.to_date)
      end
    
  end
end
