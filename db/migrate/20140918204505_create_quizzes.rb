class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :subject
      t.text :question
      t.string :image_url

      t.timestamps
    end
  end
end
