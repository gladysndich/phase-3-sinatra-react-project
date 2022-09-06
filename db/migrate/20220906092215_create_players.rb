class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id #foreign key that joins to the teams table
    end
  end
end
