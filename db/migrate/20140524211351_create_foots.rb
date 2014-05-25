class CreateFoots < ActiveRecord::Migration
  def change
    create_table :foots do |t|
      t.integer :leg_id

      t.timestamps
    end
  end
end
