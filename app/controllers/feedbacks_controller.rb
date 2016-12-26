class FeedbacksController < ApplicationController
  before_action :signed_in_admin?, only: :index
  
  def new
  	@feedback = Feedback.new
  end

  def create
  	user = User.find_by email: params[:feedback][:email]
  	Feedback.create user_id: user.id, content: params[:feedback][:content]
  end

  def index
  	@feedbacks = Feedback.all
  end
end
