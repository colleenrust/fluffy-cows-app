class CreateCows < ActiveRecord::Migration[7.0]
  def change
    create_table :cows do |t|
      t.string :photo
      t.string :compliment

      t.timestamps
    end
  end
end
