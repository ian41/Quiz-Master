require 'test_helper'

class AnswersQuizControllerTest < ActionController::TestCase
  test "should get take_the_quiz" do
    get :take_the_quiz
    assert_response :success
  end

  test "should get answer_the_quiz" do
    get :answer_the_quiz
    assert_response :success
  end

  test "should get quiz_result" do
    get :quiz_result
    assert_response :success
  end

end
