class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.integer :rank
      t.integer :year_started
      t.boolean :super_bowl
      t.references :division, null: false, foreign_key: true

      t.timestamps
    end
  end
end
