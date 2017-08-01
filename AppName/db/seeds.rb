User.create!(
  email: "boi@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1Admin user created"

User.create!(
  email: "boi2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1regular user created"


3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

puts "3 Topics created"


10.times do |blog|
  Blog.create!(title: "My Blog Post#{blog}",
  body: "memes",topic_id: Topic.last.id
  )
end
puts "10 blog posts created"


5.times do |skill|
  Skill.create!(
    title: "rails #{skill}",
    percent_utilized: 15
    
    )
  end
  puts "5 skils created"
  8.times do |portfolio_items|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_items}" ,
      subtitle:"ruby on rails" ,
      body: "body text = memes",
      main_image:"http://placehold.it/600x400" ,
      thumb_image:"http://placehold.it/350x200" ,
      
      )
  end
   1.times do |portfolio_items|
     Portfolio.create!(
      title: "Portfolio title: #{portfolio_items}" ,
      subtitle:"Angular" ,
      body: "body text = memes",
      main_image:"http://placehold.it/600x400" ,
      thumb_image:"http://placehold.it/350x200" ,
      
      )
    end
    
  
  puts "9 portfolio items created"
  
  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology#{technology}",
      
      )
    
  end
    
    
    puts "3 technology created"