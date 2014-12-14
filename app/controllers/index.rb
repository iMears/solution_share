require_relative '../lib/links'

get '/' do
  @weeks = ['/phase-0-unit-1/tree/master/week-1/1-command-line',
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
  @cohorts = Cohort.all
  erb :index
end


get '/links' do
  redirect "/users/#{params[:cohort]}?challenge=#{params[:challenge]}"
  # { links: Links.get(params) }.to_json
end

get '/users/:cohort' do
  cohort = Cohort.find_by(name: params[:cohort])
  @students = cohort.students
  @github_link = params[:challenge]
  erb :show
end



