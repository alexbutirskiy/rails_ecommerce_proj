class FeedbacksController < ApplicationController

  def index
    
  end

  def new
    @feedback = Feedback.new
  end

  def create
    feedback = Feedback.new
    feedback.subj = params[:feedback][:subj]
    feedback.msg = params[:feedback][:msg]
    feedback.save
    redirect_to root_path
  end
end
