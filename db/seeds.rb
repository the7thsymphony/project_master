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


domain1 = Domain.new(label:"video")
domain2 = Domain.new(label:"musique")
domain3 = Domain.new(label:"photo")
domain4 = Domain.new(label:"conception")


job1 = Job.new(name:"cameraman", domain_id: 1)
job2 = Job.new(name:"photographe", domain_id: 3)
job3 = Job.new(name:"compositeur",domain_id: 2)
job4 = Job.new(name:"perchiste",domain_id: 1)
job5 = Job.new(name:"assistant-monteur",domain_id: 1)
job6 = Job.new(name:"monteur",domain_id:1)
job7 = Job.new(name:"scenariste",domain_id: 4)
job8 = Job.new(name:"chanteur",domain_id: 2)
job9 = Job.new(name:"figurant",domain_id: 1)
job10 = Job.new(name:"guitariste",domain_id: 2)
job11 = Job.new(name:"maquilleuse",domain_id:1)
job12 = Job.new(name:"graphiste",domain_id:4)
job13 = Job.new(name:"réalisateur",domain_id:1)
job14 = Job.new(name:"motion-designer",domain_id:1)
job15 = Job.new(name:"cadreur",domain_id: 1)
job16 = Job.new(name:"model",domain_id:3)


user1 = User.new(first_name:"Fred",last_name:"Petris")
user2 = User.new(first_name:"Baptiste",last_name:"Becmeur")
user3 = User.new(first_name:"Raphaël",last_name:"Nostress")
user4 = User.new(first_name:"Arnaud",last_name:"huguenin")
user5 = User.new(first_name:"Florian",last_name:"Maneyrol")
user6 = User.new(first_name:"Guillaume",last_name:"Campo")
user7 = User.new(first_name:"Sylvain",last_name:"Peygney")
user8 = User.new(first_name:"Grégroire",last_name:"Bessagnet")
user9 = User.new(first_name:"Alexandre",last_name:"Herit")



project1 = Project.new(title:"Video sur Bordeaux", description:"Bonjour je compte faire une vidéo sur Bordeaux, je compte sur vous !",user: user1)


project_jobs1 = Project_jobs.new(project: project1,  job: job1, number:2)
project_jobs2 = Project_jobs.new(project: project1,  job: job2, number:1)
project_jobs3 = Project_jobs.new(project: project1,  job: job3, number:4)
