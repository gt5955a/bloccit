include RandomData

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create Advertisements
15.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: RandomData.random_integer
  )
end
advertisements = Advertisement.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
comments = Comment.all

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Advertisement.count} advertisements created"
puts "#{Comment.count} comments created"
