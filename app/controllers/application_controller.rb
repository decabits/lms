class ApplicationController < ActionController::Base
  private

#   # Overwriting the sign_out redirect path method
#   # Overwriting the sign_out redirect path method
#   def after_sign_out_path_for(resource_or_scope)
#     if resource_or_scope == :user
#       new_user_session_path
#     elsif resource_or_scope == :admin
#       new_admin_session_path
#     else
#       root_path
#     end

# Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end
