class CreateSiameseJoints < ActiveRecord::Migration
  def change
    create_table :siamese_joints do |t|
      t.integer :body_id
      t.integer :leg_id

      t.timestamps
    end
  end
end
