class AddQuestionsToQuizRecords < ActiveRecord::Migration
  def change
    add_column :quiz_records, :question, :string
  end
end
