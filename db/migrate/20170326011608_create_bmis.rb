class CreateBmis < ActiveRecord::Migration[5.0]
  def change
    create_table :bmis do |t|
      t.string :mass
      t.string :height
      t.string :category
      t.integer :user_id


      t.timestamps
    end
  end
end
