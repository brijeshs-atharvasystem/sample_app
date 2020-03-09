class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.timestamps
    end
    add_index :topics, :name
    (1..100).to_a.each do |index|
      Topic.create!(name: "Topic #{index+1}")
    end
  end
end
