require 'pp'
require 'json'
file_names = ['./db/desertrabbits.rb', './db/largemouth.rb', './db/pocketmice.rb', './db/raccoons.rb']
names = ["Desert Rabbits", "largemouth", "pocketmice", "raccoons"]
cohorts_name= ['rabbits', 'largemouth', 'mice', 'raccoons']
cohorts_hash= {}

pp Cohort.create(name: "Desert rabbits", date: "2014" )
pp Cohort.create(name: "Largemouth Bass", date: "2014" )
pp Cohort.create(name: "Pocket Mice", date: "2014" )
pp Cohort.create(name: "SF Raccoons", date: "2014" )

module DBC_COHORTS_GENERATOR
  def self.file_parser(file_names, names)
    results = []
    file_names.each_with_index do |file, index|
        file = File.open(file)
        file_string = File.read(file)
        results << JSON.parse(file_string)[names[index]]
    end
    results
  end

  def self.cohort_generator(data, number)
    data.each_with_index do |user, index|
        github = data[index]["repo"]["href"]
        github = github.split('.com/')[1]
        name = data[index]["name"]
        object = Student.create(name:name,username: github, cohort_id: number)
        pp object
    end
  end
end

class User
    attr_reader :name, :github
    def initialize(name, github)
      @name = name
      @github = github
    end
end

results = DBC_COHORTS_GENERATOR.file_parser(file_names, names)

results.each_with_index do |cohort, index|
  cohorts_hash[cohorts_name[index]] = DBC_COHORTS_GENERATOR.cohort_generator(cohort, index+1)
end

challenge_paths = [
  '/phase-0-unit-1/tree/master/week-1/1-command-line',
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
  '/phase-0-unit-1/blob/master/week-1/12-self-introduction.md',
  '/phase-0-unit-1/blob/master/week-2/1-cultural-assignment.md',
  '/phase-0-unit-1/tree/master/week-2/2-site-planning',
  '/phase-0-unit-1/tree/master/week-2/3-wireframing',
  '/phase-0-unit-1/tree/master/week-2/4-beginning-html',
  '/phase-0-unit-1/tree/master/week-2/5-beginning-css',
  '/phase-0-unit-1/tree/master/week-2/6-blog-template',
  '/phase-0-unit-1/tree/master/week-2/7-chrome-devtools',
  '/phase-0-unit-1/tree/master/week-2/8-your-website-solo-challenge',
  '/phase-0-unit-1/tree/master/week-2/9-testing-and-maintenance',
  '/phase-0-unit-1/blob/master/week-2/10-technical-blog.md',
  '/phase-0-unit-1/tree/master/week-2/11-gps1-1',
  '/phase-0-unit-1/tree/master/week-2/12-BONUS-challenges',
  '/phase-0-unit-1/tree/master/week-3/1-numbers-letters',
  '/phase-0-unit-1/tree/master/week-3/2-methods',
  '/phase-0-unit-1/tree/master/week-3/3-flow-control',
  '/phase-0-unit-1/tree/master/week-3/4-arrays',
  '/phase-0-unit-1/tree/master/week-3/5-more-methods',
  '/phase-0-unit-1/tree/master/week-3/6-fix-the-errors',
  '/phase-0-unit-1/blob/master/week-3/7-technical-blog.md',
  '/phase-0-unit-1/blob/master/week-3/8-cultural-blog.md',
  '/phase-0-unit-1/tree/master/week-3/9-gps1-2',
  '/phase-0-unit-1/tree/master/week-3/10-BONUS-challenges',
  '/phase-0-unit-2/tree/master/week-4/1-add-it-up',
  '/phase-0-unit-2/tree/master/week-4/2-create-acct-groups',
  '/phase-0-unit-2/tree/master/week-4/3-calculate-mode',
  '/phase-0-unit-2/tree/master/week-4/4-group-research-methods',
  '/phase-0-unit-2/tree/master/week-4/5-nums-commas-solo-challenge',
  '/phase-0-unit-2/tree/master/week-4/6-pad-array',
  '/phase-0-unit-2/tree/master/week-4/7-die-class',
  '/phase-0-unit-2/blob/master/week-4/8-technical-blog.md',
  '/phase-0-unit-2/blob/master/week-4/9-cultural-blog.md',
  '/phase-0-unit-2/blob/master/week-4/10-accountability-group.md',
  '/phase-0-unit-2/tree/master/week-4/11-BONUS-challenges',
  '/phase-0-unit-2/tree/master/week-5/1-die',
  '/phase-0-unit-2/tree/master/week-5/2-guessing-game',
  '/phase-0-unit-2/tree/master/week-5/3-attr',
  '/phase-0-unit-2/tree/master/week-5/4-cipher-challenge',
  '/phase-0-unit-2/tree/master/week-5/5-bingo-solo-challenge',
  '/phase-0-unit-2/tree/master/week-5/6-validate-credit-card',
  '/phase-0-unit-2/blob/master/week-5/7-technical-blog.md',
  '/phase-0-unit-2/blob/master/week-5/8-cultural-blog.md',
  '/phase-0-unit-2/tree/master/week-5/9-gps2-1',
  '/phase-0-unit-2/tree/master/week-5/10-BONUS-challenges',
  '/phase-0-unit-2/tree/master/week-6/1-drawer-debugger',
  '/phase-0-unit-2/tree/master/week-6/2-variable-scope',
  '/phase-0-unit-2/tree/master/week-6/3-playlist',
  '/phase-0-unit-2/tree/master/week-6/4-bingo-2-solo-challenge',
  '/phase-0-unit-2/tree/master/week-6/5-inheritance',
  '/phase-0-unit-2/tree/master/week-6/6-refactoring',
  '/phase-0-unit-2/blob/master/week-6/7-technical-blog.md',
  '/phase-0-unit-2/blob/master/week-6/8-cultural-blog.md',
  '/phase-0-unit-2/tree/master/week-6/9-gps2-2',
  '/phase-0-unit-2/tree/master/week-6/10-BONUS-challenges',
  '/phase-0-unit-3/tree/master/week-7/1-code-combat',
  '/phase-0-unit-3/tree/master/week-7/2-eloquent-js',
  '/phase-0-unit-3/tree/master/week-7/3-js-variables-objects',
  '/phase-0-unit-3/tree/master/week-7/4-manipulating-js-objects',
  '/phase-0-unit-3/tree/master/week-7/5-design-cc-mission-solo-challenge',
  '/phase-0-unit-3/tree/master/week-7/6-group-project',
  '/phase-0-unit-3/blob/master/week-7/7-technical-blog.md',
  '/phase-0-unit-3/blob/master/week-7/8-cultural-blog.md',
  '/phase-0-unit-3/tree/master/week-7/9-gps3-1',
  '/phase-0-unit-3/blob/master/week-7/10-accountability-group.md',
  '/phase-0-unit-3/tree/master/week-8/1-intro-to-databases',
  '/phase-0-unit-3/tree/master/week-8/2-more-schemas',
  '/phase-0-unit-3/tree/master/week-8/3-js-gradebook',
  '/phase-0-unit-3/tree/master/week-8/4-js-tally-votes',
  '/phase-0-unit-3/blob/master/week-8/5-ruby.md',
  '/phase-0-unit-3/blob/master/week-8/6-cheatsheet.md',
  '/phase-0-unit-3/blob/master/week-8/7-technical-blog.md',
  '/phase-0-unit-3/blob/master/week-8/8-cultural-blog.md',
  '/phase-0-unit-3/tree/master/week-8/9-gps3-2',
  '/phase-0-unit-3/blob/master/week-8/10-accountability-group.md',
  '/phase-0-unit-3/tree/master/phase-0-unit-3/tree/master/week-8/11-BONUS-challenges',
  '/phase-0-unit-3/blob/master/week-9/1-professional-blog.md',
  '/phase-0-unit-3/tree/master/week-9/2-JavaScript',
  '/phase-0-unit-3/blob/master/week-9/3-ruby.md',
  '/phase-0-unit-3/blob/master/week-9/4-cultural-blog.md',
  '/phase-0-unit-3/blob/master/week-9/5-cohort-bonding.md',
  '/phase-0-unit-3/blob/master/week-9/6-accountability-group.md',
  '/phase-0-unit-3/tree/master/week-9/7-BONUS-challenges'
]

# Example create: Challenge.create({ week: 1, path: '/phase-0-unit-1/tree/master/week-1/1-command-line' })
 # s.slice(/week-\d+/).split('-').pop.to_i
challenge_paths.each do |path|
  week_num = path.slice(/week-\d+/).split('-').pop.to_i
  Challenge.create({week: week_num, path: path})
end


