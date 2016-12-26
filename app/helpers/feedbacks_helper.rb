module FeedbacksHelper
  def signed_in_admin?
  	current_user.admin?
  end
end
