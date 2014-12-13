module Links
  extend self

  WEEK_1 = ['/phase-0-unit-1/tree/master/week-1/1-command-line',
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

  DESERT_RABBITS = {
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

  def get(args)
    student_name = args[:student_name].to_sym
    week_num = args[:week_num].to_i
    # challenge_num = args[:challenge_num]
    ["http://github.com/#{DESERT_RABBITS[student_name][1]}#{WEEK_1[week_num-1]}"]
  end

end
