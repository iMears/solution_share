class AddStudentProfiles < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :name
      t.belongs_to :cohort
    end
  end
end
