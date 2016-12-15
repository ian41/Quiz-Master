class RemovePointFromQuizRecords < ActiveRecord::Migration
  def change
    remove_column :quiz_records, :point, :integer
  end
end
