class CreateRantsTable < ActiveRecord::Migration
  def change
    create_table :rants do |t|
      t.text :content
      t.integer :user_id
    end
  end
end
