class QuestionsController < ApplicationController

  DISCUSSIONS = {
    1 =>  { question: "What is your name?", questionner: "- You", answer: "None of your business... Get back to work!!", answerer: "- Coach" },
    2 =>  { question: "Sir? Could you tell me...?", questionner: "- You", answer: "Dude, what do you want? Can't you follow directions?", answerer: "- Coach" },
    3 =>  { question: "Sir, have you seen my drawing?", questionner: "- You", answer: "Aaawww, this is so cute... now GET BACK TO WORK!!", answerer: "- Coach" },
    4 =>  { question: "Sir, what is the date today?", questionner: "- You", answer: "What?? Are you on drugs?  Today is #{Time.now}", answerer: "- Coach" }
  }

  def index
    @question = params[:question]
    @answers = DISCUSSIONS.select { |id, q| a[:question] == @question }
  end

  def ask
  end

  def answer
    @question = params[:question]
    @discussion = DISCUSSIONS.find { |id, q| q[:question] == @question }
    if @discussion != nil
      @answer = @discussion[1][:answer]
      @questionner = @discussion[1][:questionner]
      @answerer = @discussion[1][:answerer]
    else
      @answer = "I do not have an answer to that question!!"
      @questionner = "- You"
      @answerer = "- The coach"
    end
  end
end

