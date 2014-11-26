def review_more
  puts "\nReview more solutions?"
  print '>'
  again = gets.chomp[0].downcase
  if again == 'y'
    exec('ruby solution_share.rb')
  else
    puts "\nThanks for using Solution Share!"
  end
end

def open_link
  puts "\nOpen link now?"
  print '>'
  visit = gets.chomp[0].downcase
  if visit == 'y'
    puts 'Opening link...'
    exec('open ' + @final_url)
  else
    puts "\n#{@cohort[@student][0]}'s Week-#{@week_number} Challenge-#{@challenge_num} link:"
    puts @final_url
    review_more
  end
end

def check_name
  while !@cohort.include?(@student) # loop until given a valid last name
    puts "\nError: Please enter correct last name:"
    print ">"
    @student = gets.chomp.downcase.to_sym
  end
end

@week_1 = ['/phase-0-unit-1/tree/master/week-1/1-command-line',
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

@week_2 = ['/phase-0-unit-1/blob/master/week-2/1-cultural-assignment.md',
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
            '/phase-0-unit-1/tree/master/week-2/12-BONUS-challenges'
          ]

@week_3 = ['/phase-0-unit-1/tree/master/week-3/1-numbers-letters',
          '/phase-0-unit-1/tree/master/week-3/2-methods',
          '/phase-0-unit-1/tree/master/week-3/3-flow-control',
          '/phase-0-unit-1/tree/master/week-3/4-arrays',
          '/phase-0-unit-1/tree/master/week-3/5-more-methods',
          '/phase-0-unit-1/tree/master/week-3/6-fix-the-errors',
          '/phase-0-unit-1/blob/master/week-3/7-technical-blog.md',
          '/phase-0-unit-1/blob/master/week-3/8-cultural-blog.md',
          '/phase-0-unit-1/tree/master/week-3/9-gps1-2',
          '/phase-0-unit-1/tree/master/week-3/10-BONUS-challenges'
        ]

@week_4 = ['/phase-0-unit-2/tree/master/week-4/1-add-it-up',
          '/phase-0-unit-2/tree/master/week-4/2-create-acct-groups',
          '/phase-0-unit-2/tree/master/week-4/3-calculate-mode',
          '/phase-0-unit-2/tree/master/week-4/4-group-research-methods',
          '/phase-0-unit-2/tree/master/week-4/5-nums-commas-solo-challenge',
          '/phase-0-unit-2/tree/master/week-4/6-pad-array',
          '/phase-0-unit-2/tree/master/week-4/7-die-class',
          '/phase-0-unit-2/blob/master/week-4/8-technical-blog.md',
          '/phase-0-unit-2/blob/master/week-4/9-cultural-blog.md',
          '/phase-0-unit-2/blob/master/week-4/10-accountability-group.md',
          '/phase-0-unit-2/tree/master/week-4/11-BONUS-challenges'
        ]

@week_5 = ['/phase-0-unit-2/tree/master/week-5/1-die',
          '/phase-0-unit-2/tree/master/week-5/2-guessing-game',
          '/phase-0-unit-2/tree/master/week-5/3-attr',
          '/phase-0-unit-2/tree/master/week-5/4-cipher-challenge',
          '/phase-0-unit-2/tree/master/week-5/5-bingo-solo-challenge',
          '/phase-0-unit-2/tree/master/week-5/6-validate-credit-card',
          '/phase-0-unit-2/blob/master/week-5/7-technical-blog.md',
          '/phase-0-unit-2/blob/master/week-5/8-cultural-blog.md',
          '/phase-0-unit-2/tree/master/week-5/9-gps2-1',
          '/phase-0-unit-2/tree/master/week-5/10-BONUS-challenges'
        ]

@week_6 = ['/phase-0-unit-2/tree/master/week-6/1-drawer-debugger',
          '/phase-0-unit-2/tree/master/week-6/2-variable-scope',
          '/phase-0-unit-2/tree/master/week-6/3-playlist',
          '/phase-0-unit-2/tree/master/week-6/4-bingo-2-solo-challenge',
          '/phase-0-unit-2/tree/master/week-6/5-inheritance',
          '/phase-0-unit-2/tree/master/week-6/6-refactoring',
          '/phase-0-unit-2/blob/master/week-6/7-technical-blog.md',
          '/phase-0-unit-2/blob/master/week-6/8-cultural-blog.md',
          '/phase-0-unit-2/tree/master/week-6/9-gps2-2',
          '/phase-0-unit-2/tree/master/week-6/10-BONUS-challenges'
        ]

@week_7 = ['/phase-0-unit-3/tree/master/week-7/1-code-combat',
          '/phase-0-unit-3/tree/master/week-7/2-eloquent-js',
          '/phase-0-unit-3/tree/master/week-7/3-js-variables-objects',
          '/phase-0-unit-3/tree/master/week-7/4-manipulating-js-objects',
          '/phase-0-unit-3/tree/master/week-7/5-design-cc-mission-solo-challenge',
          '/phase-0-unit-3/tree/master/week-7/6-group-project',
          '/phase-0-unit-3/blob/master/week-7/7-technical-blog.md',
          '/phase-0-unit-3/blob/master/week-7/8-cultural-blog.md',
          '/phase-0-unit-3/tree/master/week-7/9-gps3-1',
          '/phase-0-unit-3/blob/master/week-7/10-accountability-group.md'
        ]

@week_8 = ['/phase-0-unit-3/tree/master/week-8/1-intro-to-databases',
          '/phase-0-unit-3/tree/master/week-8/2-more-schemas',
          '/phase-0-unit-3/tree/master/week-8/3-js-gradebook',
          '/phase-0-unit-3/tree/master/week-8/4-js-tally-votes',
          '/phase-0-unit-3/blob/master/week-8/5-ruby.md',
          '/phase-0-unit-3/blob/master/week-8/6-cheatsheet.md',
          '/phase-0-unit-3/blob/master/week-8/7-technical-blog.md',
          '/phase-0-unit-3/blob/master/week-8/8-cultural-blog.md',
          '/phase-0-unit-3/tree/master/week-8/9-gps3-2',
          '/phase-0-unit-3/blob/master/week-8/10-accountability-group.md',
          '/phase-0-unit-3/tree/master/phase-0-unit-3/tree/master/week-8/11-BONUS-challenges'
        ]

@week_9 = ['/phase-0-unit-3/blob/master/week-9/1-professional-blog.md',
          '/phase-0-unit-3/tree/master/week-9/2-JavaScript',
          '/phase-0-unit-3/blob/master/week-9/3-ruby.md',
          '/phase-0-unit-3/blob/master/week-9/4-cultural-blog.md',
          '/phase-0-unit-3/blob/master/week-9/5-cohort-bonding.md',
          '/phase-0-unit-3/blob/master/week-9/6-accountability-group.md',
          '/phase-0-unit-3/tree/master/week-9/7-BONUS-challenges'
        ]

@all_weeks = [@week_1, @week_2, @week_3, @week_4, @week_5, @week_6, @week_7, @week_8, @week_9]


@desert_rabbits = {
                  karlsberg: ['Aaron Karlsberg', 'aaronkarlsberg'],
                  esmaili: ['Ali Esmaili', 'AESM'],
                  vaughan: ['Andrew Vaughan', 'avaughan89'],
                  field: ['Angela Field', 'angelafield'],
                  oztuncer: ['Banu Oztuncer', 'BanuD'],
                  vogelgesang: ['Brian Vogelgesang', 'kida001'],
                  giardina: ['Charles Giardina', 'cgardens'],
                  klos: ['Dan Klos', 'eclecticklos'],
                  kelley: ['Daniel Kelley', 'danimalkelley'],
                  cheng: ['Gabriel Cheng', 'gsccheng'],
                  sison: ['Hannah Sison', 'hsison'],
                  mcintyre: ['Jeremy McIntyre', 'jeremymcintyre'],
                  foley: ['John Foley', 'johnwfoley'],
                  luse: ['Jordan Luse', 'JLuse'],
                  won: ['Joseph Won', 'godspeedyoo'],
                  tice: ['Kindy Tice', 'ktice74'],
                  villwock: ['Matthew Villwock', 'mtvillwock'],
                  mears: ['Maxwell Mears', 'imears'],
                  chang: ['Michael Chang', 'mikeychang2'],
                  page: ['Michael Page', 'senormichaelpage'],
                  dharamcy: ['Nilesh Dharamcy', 'www-coder-in'],
                  salisbury: ['Rex Salisbury', 'resalisbury'],
                  fiallo: ['Richard Anthony Santin Fiallo', 'Ridou'],
                  buren: ['Rilke van Buren', 'rilkevb'],
                  idrisov: ['Ruslan Idrisov', 'ruslanid'],
                  chuang: ['Victoria Chuang', 'victoriachuang'],
                  fialho: ['Vivian Vieira Fialho', 'vivivf'],
                  tsang: ['William Tsang', 'kaawang']
                }

@eastern_moose = {
                  singh: ['Amar Singh', 'ummerr'],
                  kim: ['Daniel Kim', 'bungfoon'],
                  shin: ['Daniella Shin', 'thedanplan'],
                  reeves: ['Darrin Reeves', 'dxr4841'],
                  deneroff: ['David Deneroff', 'daviddeneroff'],
                  rifkin: ['David Rifkin', 'dlrifkin'],
                  lee: ['Dongchul Lee', 'i-love-ruby'],
                  miller: ['Jennifer Miller', 'JennMiller'],
                  campbell: ['Jon Campbell', 'heycampbell'],
                  breece: ['Kenn Breece', 'kjb085'],
                  perumal:['Kevin Perumal', 'kevinperumal'],
                  nguyen: ['Mai Nguyen','mxngyn'],
                  boutaleb: ['Rayan Boutaleb', 'rayanb'],
                  kartzman: ['Remy kartzman', 'rkartzman'],
                  pergams: ['Rosa Pergams', 'rosapergams'],
                  rathi: ['Sagar Rathi', 'sagararathi'],
                  enriquez: ['Scott Enriquez', 'sjenriquez'],
                  vietrova: ['Tamara Vietrova', 'Summerwind1005'],
                  ratkalkar: ['Vivek Ratkalkar', 'vratkalkar']
                }

@cohort_dir = [@desert_rabbits, @eastern_moose]