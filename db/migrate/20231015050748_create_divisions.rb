class CreateDivisions < ActiveRecord::Migration[7.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.string :conference
      t.boolean :sb_five

      t.timestamps
    end
  end
end
