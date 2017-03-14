class CreateLifelesses < ActiveRecord::Migration
  def change
    create_table :lifelesses do |t|

      t.timestamps
    end
  end
end
