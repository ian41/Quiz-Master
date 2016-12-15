class RemoveQuizIdFromQuizRecords < ActiveRecord::Migration
  def change
    remove_column :quiz_records, :quiz_id, :integer
  end
end
