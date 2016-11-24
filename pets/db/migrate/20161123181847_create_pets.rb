class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.belongs_to :breed, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
