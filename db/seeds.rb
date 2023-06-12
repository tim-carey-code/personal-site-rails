99.times do |b|
  Blog.create!(user: User.first, content: Faker::Lorem.paragraphs(number: 5), title: Faker::Lorem.sentences(number: 4), category: "Tech")
end
