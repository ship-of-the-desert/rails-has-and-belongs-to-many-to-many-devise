module ApplicationHelper
  def current_user_name
    current_user || "No One Logged In"
    "Current User Name"
  end
end
