class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.integer :body_id

      t.timestamps
    end
  end
end
