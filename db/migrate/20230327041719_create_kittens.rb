class CreateKittens < ActiveRecord::Migration[7.0]
  def change
    create_table :kittens do |t|
      t.string :name
      t.integer :cuteness
      t.integer :age
      t.integer :softness

      t.timestamps
    end
  end
end
