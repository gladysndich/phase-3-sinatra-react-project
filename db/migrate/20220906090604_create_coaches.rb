class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :team_id #foreign key from teams table
    end
  end
end
