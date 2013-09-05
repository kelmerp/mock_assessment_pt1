require 'faker'

# # create a few users
# User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
# 5.times do
#   User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
# end

# # create a few technical skills
# computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
# computer_skills.each do |skill|
#   Skill.create :name => skill, :context => 'technical'
# end

# # create a few creative skills
# design_skills = %w(Photoshop Illustrator Responsive-Design)
# design_skills.each do |skill|
#   Skill.create :name => skill, :context => 'creative'
# end

# # TODO: create associations between users and skills
# User.all.each do |user|
#   user.skills << Skill.all.sample
# end

amanda = User.create(name: "Amanda Huggenkyss", email: "ahuggen@gmail.com", password: "password")
ben = User.create(name: "Ben Dover", email: "bdover@yahoo.com", password: "password")

ruby = Skill.create(name: "Ruby", context: "technical")
js = Skill.create(name: "JavaScript", context: "technical")
illustrator = Skill.create(name: "Illustrator", context: "creative")
css = Skill.create(name: "CSS", context: "technical")

amanda.skills << ruby
amanda.proficiencies.last.update_attributes(years: 1, formal: "yes")
amanda.skills << js
amanda.proficiencies.last.update_attributes(years: 2, formal: "yes")
ben.skills << illustrator
ben.proficiencies.last.update_attributes(years: 5, formal: "no")
ben.skills << css
ben.proficiencies.last.update_attributes(years: 3, formal: "no")
