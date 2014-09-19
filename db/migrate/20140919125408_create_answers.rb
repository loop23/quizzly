class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.boolean :corrent
      t.integer :quiz_id
      t.timestamps
    end
  end
end
