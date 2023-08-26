99.times do |_b|
  blog = Blog.create!(user: User.first, content: Faker::Lorem.paragraphs(number: 5), title: Faker::Lorem.sentences(number: 4),
               category: 'Tech')
  blog.cover_image.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/experience-image.jpg')),
    filename: 'experience-image.jpg'
  )
end
