class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :user_id
      t.integer :ques_id

      t.timestamps null: false
    end
  end
end
