module Links
  extend self


  def get(args)
    challengeLink = args[:challenge]
    username = args[:username]
    cohort = args[:cohort]

    p "http://github.com/#{username}#{challengeLink}"
  end

end
