class CreateQuizRecords < ActiveRecord::Migration
  def change
    create_table :quiz_records do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :point
      t.integer :total_question

      t.timestamps null: false
    end
  end
end
