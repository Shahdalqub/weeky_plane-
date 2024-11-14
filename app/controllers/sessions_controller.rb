# app/controllers/devise/sessions_controller.rb
class Devise::SessionsController < Devise::SessionsController
  # Override the after sign out path
  def after_sign_out_path_for(resource_or_scope)
    tasks_path  # حدد الصفحة التي تريد التوجيه إليها بعد الخروج
  end
end

