class QuizRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :quiz
  has_many :quiz_answers

  validates :answer, presence: true

  def self.get_result(records, quiz_id)
    quiz = Quiz.find(quiz_id)
    records.answer.eql?(quiz.answer) ? records.update_attributes(result: true) : records.update_attributes(result: false)
  end
end
