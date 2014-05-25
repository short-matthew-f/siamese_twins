class CreateToes < ActiveRecord::Migration
  def change
    create_table :toes do |t|
      t.integer :foot_id

      t.timestamps
    end
  end
end
