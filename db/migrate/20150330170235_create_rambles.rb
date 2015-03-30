class CreateRambles < ActiveRecord::Migration
  def change
    create_table :rambles do |t|
      t.string :content
      t.datetime :time
      t.integer :user_id

      t.timestamps
    end
  end
end
