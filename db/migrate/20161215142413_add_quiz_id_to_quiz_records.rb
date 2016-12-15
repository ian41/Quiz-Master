class AddQuizIdToQuizRecords < ActiveRecord::Migration
  def change
    add_column :quiz_records, :quiz_id, :integer
    add_index :quiz_records, :quiz_id
  end


end
