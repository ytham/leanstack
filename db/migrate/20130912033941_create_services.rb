class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :cluster_id
      t.string :stackup_id
      t.string :name
      t.string :imageUrl
      t.string :description

      t.timestamps
    end
  end
end
