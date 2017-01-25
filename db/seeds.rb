# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Create a admin account, and create 10 public jobs, and 10 hidden jobs'

create_account = User.create([email: 'info@artlife.com', password: '123654789', password_confirmation: '123654789', is_admin: 'true'])
puts 'Admin account created.'

create_jos = for i in 1..10 do
               Job.create!([title: "Ruby On Rails Developer No.#{i}", description: "JOB ID:#{i}
                 <hr>

### Job Description

Our direct client in the Metro-Detroit area is looking to add a seasoned Ruby on Rails Developer on a direct-hire opportunity. The Ruby on Rails Developer will be working on the front lines to develop high quality code for their latest products as well as maintaining their existing offerings. <br>

#### Responsibilities:<br>
* Produce high-quality code to help create new products and maintain and improve existing products.<br>
* Collaborate with other technology team members on software development, specifically regarding functionality, user experience, and technical design<br>
* Establish and document technical (and non-technical where necessary) requirements.
<br>

#### Requirements:
<br>

* Bachelor's degree in Computer Science or related field.<br>
* At least 4 years of experience developing web applications.<br>
* Must have strong understanding of Ruby on Rails Applications.<br>
* Advanced experience in writing and maintaining API s.<br>
* Understanding of HTML, CSS and Javascript.<br>
* Past experience in mobile development would be a huge plus, but it not required.
<br>

#### About Vivo:
<br>

Having been in business since 2006, Vivo is a full-service recruiting and consulting company, specializing on mid to senior level technology resources. Our brand promise is simple: we get people. We get that our clients don t want to waste time, and that our candidates and employees thrive when given honest feedback and an opportunity to grow.<br>
Whether you re onsite at our Pleasanton headquarters or working for one of Vivo s clients the best brand names out there our promise to you is unwavering: we will treat you like you are our most important employee.<br>
Do you think you get people get what they really need, and get how to deliver? We re not perfect but we re accountable. We re not in 32 countries, but we are in the heart of it all. So, if you are looking for a flexible, fun and high-energy work environment, along with the opportunity to work with some of the world s technology leaders, we can t wait to talk to you.", wage_upper_bound: rand(50..99) * 200, wage_lower_bound: rand(10..49) * 200, is_hidden: 'false'])
end
puts '10 Public jobs created.'

create_jos = for i in 1..10 do
               Job.create!([title: "Senior Rails Engineer (Full-Stack) No.#{i + 10}", description: "JOB ID: #{i + 10}
<hr>

### Description:

Senior Full Stack Rails Developer
<br>

This is an opportunity to join a successful startup as senior level Ruby on Rails Engineer for a SaaS offering currently being by some of the biggest names on the Web.<br>

We are looking for a senior level Full Stack Engineer with real' Rails experience who would be comfortable working in a small company setting.<br>

Tech wise, the company has Ruby on Rails as the core, Golang, Javascript etc. and lot's of AWS for cloud services - they are very open minded on technology and really allow their people to explore. As this is a small team, with product being used by huge, well known tech companies, you will really own the product.
 <br>

We would like to see experience building production web app systems at scale - in this case, handling hundreds of thousands of users.
 <br>

Ideally, we would like to see some comfort level with AWS or any cloud infrastructure system. We would like to see a true interest in modern development and devops practices.
 <br>

Most importantly, we seek someone who can work effectively at all levels of the stack, from Front End to application tier to ops.
 <br>

If you want to work with like-minded talented people, in an adult run start up where you will be noticed, then send your resume as soon as you can.", wage_upper_bound: rand(50..99) * 200, wage_lower_bound: rand(10..49) * 200, is_hidden: 'true'])
end
puts '10 Hidden jobs created.'
