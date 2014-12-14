# require 'pp'
# require 'json'
# file_names = ['./db/desertrabbits.rb', './db/largemouth.rb', './db/pocketmice.rb', './db/raccoons.rb']
# names = ["Desert Rabbits", "largemouth", "pocketmice", "raccoons"]
# cohorts_name= ['rabbits', 'largemouth', 'mice', 'raccoons']
# cohorts_hash= {}

# pp Cohort.create(name: "Desert rabbits", date: "2014" )
# pp Cohort.create(name: "Largemouth Bass", date: "2014" )
# pp Cohort.create(name: "Pocket Mice", date: "2014" )
# pp Cohort.create(name: "SF Raccoons", date: "2014" )

# module DBC_COHORTS_GENERATOR
#   def self.file_parser(file_names, names)
#     results = []
#     file_names.each_with_index do |file, index|
#         file = File.open(file)
#         file_string = File.read(file)
#         results << JSON.parse(file_string)[names[index]]
#     end
#     results
#   end

#   def self.cohort_generator(data, number)
#     data.each_with_index do |user, index|
#         github = data[index]["repo"]["href"]
#         github = github.split('.com/')[1]
#         name = data[index]["name"]
#         object = Student.create(name:name,username: github, cohort_id: number)
#         pp object
#     end
#   end
# end

# class User
#     attr_reader :name, :github
#     def initialize(name, github)
#       @name = name
#       @github = github
#     end
# end

# results = DBC_COHORTS_GENERATOR.file_parser(file_names, names)

# results.each_with_index do |cohort, index|
#   cohorts_hash[cohorts_name[index]] = DBC_COHORTS_GENERATOR.cohort_generator(cohort, index+1)
# end

week = ['/phase-0-unit-1/tree/master/week-1/1-command-line',
  '/phase-0-unit-1/tree/master/week-1/2-computer-setup',
  '/phase-0-unit-1/tree/master/week-1/3-think-about-time',
  '/phase-0-unit-1/tree/master/week-1/4-github-intro',
  '/phase-0-unit-1/tree/master/week-1/5-fork-clone',
  '/phase-0-unit-1/tree/master/week-1/6-tracking-changes',
  '/phase-0-unit-1/tree/master/week-1/7-set-remotes',
  '/phase-0-unit-1/tree/master/week-1/8-new-repo',
  '/phase-0-unit-1/blob/master/week-1/9-twitter-intro.md',
  '/phase-0-unit-1/blob/master/week-1/10-technical-blog.md',
  '/phase-0-unit-1/blob/master/week-1/11-cultural-blog.md',
  '/phase-0-unit-1/blob/master/week-1/12-self-introduction.md'
]

# create Challenge object and put them in the database
# Example create: Challenge.create({ week: 1, path: '/phase-0-unit-1/tree/master/week-1/1-command-line' })
week.each { |path| Challenge.create({week: 1, path: path}) }
