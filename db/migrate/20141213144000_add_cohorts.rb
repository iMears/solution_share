class AddCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :location, :default => "San Francisco"
      t.string :date
    end
  end
end
