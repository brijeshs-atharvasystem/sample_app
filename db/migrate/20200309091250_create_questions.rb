class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :questions, :user_id
    add_index :questions, :title
  end
end
