class AnswersQuizController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quiz, only: [:take_the_quiz]

  def take_the_quiz
    @take_the_quiz = QuizRecord.new
  end

  def answer_the_quiz
    @take_the_quiz = current_user.quiz_records.new(quiz_params)
    QuizRecord.get_result(@take_the_quiz, params[:quiz_record][:quiz_id])

    respond_to do |format|
      if @take_the_quiz.save
        format.html { redirect_to result_answers_quiz_index_path(@take_the_quiz.id)}
      end
    end
  end

  def quiz_result
    @quiz_record = QuizRecord.find(params[:id])
  end

  private
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    def quiz_params
      params.require(:quiz_record).permit(:name, :answer, :question, :name)
    end
end
