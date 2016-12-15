class RemoveTotalQuestionsFromQuizRecords < ActiveRecord::Migration
  def change
    remove_column :quiz_records, :total_question, :integer
  end
end
