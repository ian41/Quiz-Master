class AddAnswerQuestionToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :question, :string
    add_column :quizzes, :answer, :string
  end
end
