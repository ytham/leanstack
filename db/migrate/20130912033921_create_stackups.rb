class CreateStackups < ActiveRecord::Migration
  def change
    create_table :stackups do |t|

      t.timestamps
    end
  end
end
