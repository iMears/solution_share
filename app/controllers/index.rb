get '/' do
  @cohorts = Cohort.all
  @students = Student.all.order('name')
  @challenges = Challenge.all
  erb :index
end



