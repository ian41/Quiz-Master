class AddAnswerAndResultToQuizRecords < ActiveRecord::Migration
  def change
    add_column :quiz_records, :answer, :string
    add_column :quiz_records, :result, :boolean
  end
end
