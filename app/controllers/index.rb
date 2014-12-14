get '/' do
  @cohorts = Cohort.all
  @students = Student.all
  @challenges = Challenge.all
  erb :index
end



