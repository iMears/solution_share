class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :week
      t.string :path
      t.timestamps
    end
  end
end
