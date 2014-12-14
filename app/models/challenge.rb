class Challenge < ActiveRecord::Base
  # Remember to create a migration!
  def name
    self.path.split('/').pop
  end
end
