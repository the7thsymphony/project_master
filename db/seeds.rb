# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# domains

# jobs

# users

# projects

# project_jobs

puts "-- Start Seeding"

puts "Destroying everything"
ProjectJob.destroy_all
Project.destroy_all
User.destroy_all
Job.destroy_all
Domain.destroy_all


domains = [
  {
    label: "video",
    jobs: [
      { name: "cameraman", picture: "monteur.jpg" },
      { name: "perchiste", picture: "perchiste.jpg" },
      { name: "assistant-monteur", picture: "monteur-video.png" },
      { name: "monteur", picture: "http://www.5dimension.fr/Production-Audiovisuelle/monteur-video.gif" },
      { name: "figurant", picture: "figurant.jpg" }
    ]
  },
  {
    label: "musique",
    jobs: [
      { name: "compositeur", picture: "compositeur.png" },
      { name: "chanteur", picture: "chanteur.jpg" },
      { name: "guitariste", picture: "guitariste.jpg" }
    ]
  }
]

puts "- Seed Domains and Jobs"

domains.each do |domain|
  d = Domain.create(label: domain[:label])
  domain[:jobs].each do |job|
    job = Job.create(name: job[:name], picture: job[:picture], domain: d)
  end
end


users = [
  { first_name:"Fred", last_name:"Petris" },
  { first_name:"Baptiste", last_name:"Becmeur" },
  { first_name:"Raphaël", last_name:"Nostress" },
  { first_name:"Arnaud", last_name:"huguenin" },
  { first_name:"Florian", last_name:"Maneyrol" },
  { first_name:"Guillaume", last_name:"Campo" },
  { first_name:"Sylvain", last_name:"Peigney" },
  { first_name:"Grégroire", last_name:"Bessagnet" },
  { first_name:"Alexandre", last_name:"Herit" }
]
password = "123soleil"

puts "- Seed Users"

users.each do |user|
  email = "#{user[:first_name].parameterize}.#{user[:last_name].parameterize}@gmail.com"
  User.create(
    email: email,
    password: password,
    password_confirmation: password,
    first_name: user[:first_name],
    last_name: user[:first_name]
  )
end


puts "- Seed Projects"
owners = User.limit(6)

owners.each do |owner|
  owner.projects.create(title: Faker::Book.title, description: Faker::Lorem.paragraph)
end

puts "- Seed ProjectJobs"

Project.limit(6).each do |project|
  (1..6).to_a.sample.times do
    project.project_jobs.create(job: Job.order("RANDOM()").first, number: (1..2).to_a.sample)
  end
end
