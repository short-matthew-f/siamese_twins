class RemoveColumnFromLegs < ActiveRecord::Migration
  def change
    remove_column :legs, :body_id
  end
end
